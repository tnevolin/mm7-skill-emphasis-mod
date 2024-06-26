local _KNOWNGLOBALS_F

local LocalFiles = {}

local function LocalFileProc(t)
	local back, p, sz
	local pc
	
	local function restore()
		mem.copy(p, back, sz)
		mem.free(back)
		back = nil
		for k, v in pairs(pc) do
			mem.EditPChar[k] = v
		end
		events.Remove("LeaveMap", restore)
		events.Remove("LeaveGame", restore)
	end
	
	local function f()
		if back == nil then
			p, sz = t["?ptr"], t.Size
			back = mem.malloc(sz)
			mem.copy(back, p, sz)
			events.LeaveMap = restore
			events.LeaveGame = restore
			pc = {}
			local p1 = p + sz
			for k, v in pairs(internal.EditablePCharText) do
				if k >= p and k < p1 and v == mem.u4[k] then
					pc[k] = mem.string(v)
				end
			end
		end
	end
	LocalFiles[t] = f
	return f
end

-- Pass any table from #Game.*:Game# to this function to make it restore its original state after the player exits the map.
function LocalFile(t)
	return (LocalFiles[t] or LocalFileProc(t))()
end

local _NOGLOBALS_END

--!+
LocalMonstersTxt = LocalFileProc(Game.MonstersTxt)
if offsets.MMVersion >= 7 then
	--!+ [MM7+]
	LocalHostileTxt = LocalFileProc(Game.HostileTxt)
end
--!+
LocalNPCNews = LocalFileProc(Game.NPCNews)
