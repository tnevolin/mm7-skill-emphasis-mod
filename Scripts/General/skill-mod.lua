----------------------------------------------------------------------------------------------------
-- constants
----------------------------------------------------------------------------------------------------

local rankLabels =
{
	[1] = "N",
	[2] = "E",
	[3] = "M",
	[4] = "G",
}

local skillStats =
{
	[const.Skills.Alchemy]			= const.Stats.Alchemy,
	[const.Skills.IdentifyMonster]	= const.Stats.IdentifyMonster,
	[const.Skills.IdentifyItem]		= const.Stats.IdentifyItem,
	[const.Skills.Stealing]			= const.Stats.Stealing,
	[const.Skills.DisarmTraps]		= const.Stats.DisarmTraps,
	[const.Skills.Learning]			= const.Stats.Learning,
}

----------------------------------------------------------------------------------------------------
-- configuration
----------------------------------------------------------------------------------------------------

-- melee recovery cap

Game.MinMeleeRecoveryTime = 10

-- weapon base recovery bonuses

local oldWeaponBaseRecoveryBonuses =
{
	[const.Skills.Staff]	=  0,
	[const.Skills.Sword]	= 10,
	[const.Skills.Dagger]	= 40,
	[const.Skills.Axe]		=  0,
	[const.Skills.Spear]	= 20,
	[const.Skills.Mace]		= 20,
	[const.Skills.Unarmed]	= 40,
	[const.Skills.Bow]		=  0,
	[const.Skills.Blaster]	= 70,
}
local newWeaponBaseRecoveryBonuses =
{
	[const.Skills.Staff]	=  0,
	[const.Skills.Sword]	= 10,
	[const.Skills.Dagger]	= 40,
	[const.Skills.Axe]		=  0,
	[const.Skills.Spear]	= 20,
	[const.Skills.Mace]		= 20,
	[const.Skills.Unarmed]	= 40,
	[const.Skills.Bow]		=  0,
	[const.Skills.Blaster]	= 70,
}

-- weapon skill attack bonuses (by rank)

local oldWeaponSkillAttackBonuses =
{
	[const.Skills.Staff]	= { 1,  1,  1,  1, },
	[const.Skills.Sword]	= { 1,  1,  1,  1, },
	[const.Skills.Dagger]	= { 1,  1,  1,  1, },
	[const.Skills.Axe]		= { 1,  1,  1,  1, },
	[const.Skills.Spear]	= { 1,  1,  1,  1, },
	[const.Skills.Mace]		= { 1,  1,  1,  1, },
	[const.Skills.Unarmed]	= { 1,  1,  2,  2, },
	[const.Skills.Bow]		= { 1,  1,  1,  1, },
	[const.Skills.Blaster]	= { 1,  2,  3,  5, },
}
local newWeaponSkillAttackBonuses =
{ 
	[const.Skills.Staff]	= { 6,  6,  6,  6, },
	[const.Skills.Sword]	= { 6,  6,  6,  6, },
	[const.Skills.Dagger]	= { 6,  6,  6,  6, },
	[const.Skills.Axe]		= { 6,  6,  6,  6, },
	[const.Skills.Spear]	= { 9,  9,  9, 12, },
	[const.Skills.Mace]		= { 6,  6,  6,  6, },
	[const.Skills.Unarmed]	= { 6,  8, 10, 12, },
	[const.Skills.Bow]		= { 6,  6,  6,  6, },
	[const.Skills.Blaster]	= { 1,  2,  3,  5, },
}
local oldArmsmasterSkillAttackBonuses = { 0,  1,  1,  2, }
local newArmsmasterSkillAttackBonuses = { 0,  6,  6,  8, }

-- weapon skill recovery bonuses (by rank)

local oldWeaponSkillRecoveryBonuses =
{ 
	[const.Skills.Staff]	= { 0,  0,  0,  0, },
	[const.Skills.Sword]	= { 0,  1,  1,  1, },
	[const.Skills.Dagger]	= { 0,  0,  0,  0, },
	[const.Skills.Axe]		= { 0,  1,  1,  1, },
	[const.Skills.Spear]	= { 0,  0,  0,  0, },
	[const.Skills.Mace]		= { 0,  0,  0,  0, },
	[const.Skills.Unarmed]	= { 0,  0,  0,  0, },
	[const.Skills.Bow]		= { 0,  1,  1,  1, },
	[const.Skills.Blaster]	= { 0,  0,  0,  0, },
}
local newWeaponSkillRecoveryBonuses =
{ 
	[const.Skills.Staff]	= { 2,  4,  6,  8, },
	[const.Skills.Sword]	= { 6,  6,  7,  8, },
	[const.Skills.Dagger]	= { 0,  1,  2,  2, },
	[const.Skills.Axe]		= { 6,  7,  8,  8, },
	[const.Skills.Spear]	= { 0,  0,  0,  0, },
	[const.Skills.Mace]		= { 0,  0,  0,  0, },
	[const.Skills.Unarmed]	= { 0,  0,  0,  0, },
	[const.Skills.Bow]		= { 2,  4,  4,  6, },
	[const.Skills.Blaster]	= { 0,  0,  0,  0, },
}
local oldArmsmasterSkillRecoveryBonuses = { 1,  1,  1,  2, }
local newArmsmasterSkillRecoveryBonuses = { 8,  8,  8, 10, }

-- weapon skill damage bonuses (by rank)
-- ranged weapon damage bonus has no effect

local oldWeaponSkillDamageBonuses =
{ 
	[const.Skills.Staff]	= { 0,  0,  0,  0, },
	[const.Skills.Sword]	= { 0,  0,  0,  0, },
	[const.Skills.Dagger]	= { 0,  0,  0,  1, },
	[const.Skills.Axe]		= { 0,  0,  1,  1, },
	[const.Skills.Spear]	= { 0,  1,  1,  1, },
	[const.Skills.Mace]		= { 0,  1,  1,  1, },
	[const.Skills.Unarmed]	= { 0,  1,  2,  2, },
	[const.Skills.Bow]		= { 0,  0,  0,  1, },
	[const.Skills.Blaster]	= { 0,  0,  0,  0, },
}
local newWeaponSkillDamageBonuses =
{ 
	[const.Skills.Staff]	= { 0,  0,  0,  0, },
	[const.Skills.Sword]	= { 0,  0,  0,  0, },
	[const.Skills.Dagger]	= { 0,  0,  0,  1, },
	[const.Skills.Axe]		= { 2,  3,  4,  4, },
	[const.Skills.Spear]	= { 3,  4,  4,  4, },
	[const.Skills.Mace]		= { 3,  4,  4,  4, },
	[const.Skills.Unarmed]	= { 2,  4,  6,  8, },
	[const.Skills.Bow]		= { 0,  0,  0,  1, },
	[const.Skills.Blaster]	= { 0,  0,  0,  0, },
}
local oldArmsmasterSkillDamageBonuses = { 0,  0,  1,  2, }
local newArmsmasterSkillDamageBonuses = { 0,  0,  4,  6, }

local twoHandedWeaponDamageBonus = 3
local identifyMonsterDamageBonusMultiplier = 0.25

-- unarmed and dodging partial effect

local unarmedPartialEffect = 50
local dodgingPartialEffect = 50

-- weapon skill AC bonuses (by rank)

local oldWeaponSkillACBonuses =
{ 
	[const.Skills.Staff]	= { 0,  1,  1,  1, },
	[const.Skills.Sword]	= { 0,  0,  0,  1, },
	[const.Skills.Dagger]	= { 0,  0,  0,  0, },
	[const.Skills.Axe]		= { 0,  0,  0,  0, },
	[const.Skills.Spear]	= { 0,  0,  0,  1, },
	[const.Skills.Mace]		= { 0,  0,  0,  0, },
	[const.Skills.Bow]		= { 0,  0,  0,  0, },
	[const.Skills.Blaster]	= { 0,  0,  0,  0, },
}
local newWeaponSkillACBonuses =
{ 
	[const.Skills.Staff]	= { 2,  2,  2,  2, },
	[const.Skills.Sword]	= { 0,  0,  0,  0, },
	[const.Skills.Dagger]	= { 0,  0,  0,  0, },
	[const.Skills.Axe]		= { 0,  0,  0,  0, },
	[const.Skills.Spear]	= { 0,  0,  0,  0, },
	[const.Skills.Mace]		= { 0,  0,  0,  0, },
	[const.Skills.Bow]		= { 0,  0,  0,  0, },
	[const.Skills.Blaster]	= { 0,  0,  0,  0, },
}

-- armor skill AC bonuses (by rank)

local oldArmorSkillACBonuses =
{ 
	[const.Skills.Shield]	= { 1,  1,  2,  2, },
	[const.Skills.Leather]	= { 1,  1,  2,  2, },
	[const.Skills.Chain]	= { 1,  1,  1,  1, },
	[const.Skills.Plate]	= { 1,  1,  1,  1, },
	[const.Skills.Dodging]	= { 1,  2,  3,  3, },
}
local newArmorSkillACBonuses =
{ 
	[const.Skills.Shield]	= { 2,  2,  4,  4, },
	[const.Skills.Leather]	= { 2,  2,  2,  2, },
	[const.Skills.Chain]	= { 4,  4,  4,  4, },
	[const.Skills.Plate]	= { 6,  6,  6,  6, },
	[const.Skills.Dodging]	= { 1,  2,  3,  3, },
}

-- armor skill recovery penalties (by rank)

local oldArmorSkillRecoveryPenalties =
{ 
	[const.Skills.Leather]	= {10,  0,  0,  0, },
	[const.Skills.Chain]	= {20, 10,  0,  0, },
	[const.Skills.Plate]	= {30, 15, 15,  0, },
	[const.Skills.Shield]	= {10,  0,  0,  0, },
}
local newArmorSkillRecoveryPenalties =
{ 
	[const.Skills.Leather]	= {10,  0,  0,  0, },
	[const.Skills.Chain]	= {20, 10,  0,  0, },
	[const.Skills.Plate]	= {30, 15, 15,  0, },
	[const.Skills.Shield]	= {10,  0,  0,  0, },
}

-- armor skill resistance bonuses (by rank)

local oldArmorSkillResistanceBonuses =
{ 
	[const.Skills.Leather]	= { 0,  0,  0,  1, },
	[const.Skills.Chain]	= { 0,  0,  0,  0, },
	[const.Skills.Plate]	= { 0,  0,  0,  0, },
}
local newArmorSkillResistanceBonuses =
{ 
	[const.Skills.Leather]	= { 0,  1,  2,  3, },
	[const.Skills.Chain]	= { 0,  0,  1,  2, },
	[const.Skills.Plate]	= { 0,  0,  0,  0, },
}

-- special weapon skill chances

local staffEffect = {["base"] = 10, ["multiplier"] =  4, ["magicMultiplier"] = 10, }
local maceEffect	=
{
	[const.Novice]	= {["base"] =  0, ["multiplier"] =  0, ["duration"] = 10, },
	[const.Expert]	= {["base"] =  0, ["multiplier"] =  0, ["duration"] = 10, },
	[const.Master]	= {["base"] =  5, ["multiplier"] =  1, ["duration"] = 10, },
	[const.GM]		= {["base"] = 10, ["multiplier"] =  2, ["duration"] = 10, },
}

-- plate cover chances by rank

local plateCoverChances = {[const.Novice] = 0.1, [const.Expert] = 0.2, [const.Master] = 0.3, [const.GM] = 0.4, }

-- shield projectile damage multiplier per level

local shieldProjectileDamageReduction = 2

-- party cumulative skills (those added together from whole party)
-- computation type:
-- 1 = sum
-- 2 = sum with rank multiplier weight
-- 3 = sum with rank multiplier weight, skill only but not bonuses
-- 4 = sum with rank multiplier weight, skill only but not bonuses; effect is averaged among party

local skillEffectRankMultipliers =
{
	[0]				= 0,
	[const.Novice]	= 1,
	[const.Expert]	= 2,
	[const.Master]	= 3,
	[const.GM]		= 5,
}

local partyCumulativeSkills =
{
	-- skill is computated by GetSkill function
	["regular"] =
	{
		[const.Skills.Alchemy]			= {["type"] = 1, },
		[const.Skills.IdentifyItem]		= {["type"] = 2, },
		[const.Skills.IdentifyMonster]	= {["type"] = 2, },
		[const.Skills.Repair]			= {["type"] = 2, },
		[const.Skills.Stealing]			= {["type"] = 2, },
	},
	-- skill effect is computed by dedicated function
	["custom"] =
	{
		[const.Skills.DisarmTraps]		= {["type"] = 3, },
		[const.Skills.Merchant]			= {["type"] = 3, },
		[const.Skills.Perception]		= {["type"] = 3, },
		[const.Skills.Learning]			= {["type"] = 4, },
	},
}

-- monster global settings

local monsterLevelMultiplier = 1
local monsterAttackMultiplier = 2
local monsterArmorClassMultiplier = 1
local monsterDamageMultiplier = 2
local monsterHitPointsMultiplier = 3
local monsterExperienceMultiplier = 1

-- skill descriptions

local SkillDescriptionsRanks =
{
	[const.Novice]	= Game.SkillDesNormal,
	[const.Expert]	= Game.SkillDesExpert,
	[const.Master]	= Game.SkillDesMaster,
	[const.GM]		= Game.SkillDesGM,
}

local skillDescriptions =
{
	[const.Skills.Staff] =
	{
		["text"] =
			string.format(
				"\n\nSpecial effects: Random elemental magical attack.\nChance = %d%% + %d%% * level\nEffect is %d times of the selected magic skill.",
				staffEffect["base"],
				staffEffect["multiplier"],
				staffEffect["magicMultiplier"]
			),
		["rank"] =
		{
		},
	},
	[const.Skills.Sword] =
	{
		["text"] =
			string.format(
				"\n\nUsing two handed adds %d damage per level.",
				twoHandedWeaponDamageBonus
			),
		["rank"] =
		{
			[const.Master] = "may wield in left hand",
		},
	},
	[const.Skills.Dagger] =
	{
		["text"] =
			"",
		["rank"] =
		{
			[const.Expert] = "may wield in left hand",
			[const.Master] = "chance for triple damage",
		},
	},
	[const.Skills.Axe] =
	{
		["text"] =
			string.format(
				"\n\nUsing two handed adds %d damage per level.",
				twoHandedWeaponDamageBonus
			),
		["rank"] =
		{
			[const.GM] = "chance to halve target AC",
		},
	},
	[const.Skills.Spear] =
	{
		["text"] =
			string.format(
				"\n\nUsing two handed adds %d damage per level.",
				twoHandedWeaponDamageBonus
			),
		["rank"] =
		{
			[const.Master] = "may wield with one hand",
		},
	},
	[const.Skills.Mace] =
	{
		["text"] =
			string.format(
				"\n\nSpecial effects: Paralyzing for %d minutes\nMaster: chance = %d%% + %d%% * level\nGrand Master doubles the chance",
				maceEffect[const.Master]["duration"],
				maceEffect[const.Master]["base"],
				maceEffect[const.Master]["multiplier"]
			),
		["rank"] =
		{
		},
	},
	[const.Skills.Unarmed] =
	{
		["text"] =
			string.format(
				"\n\nBonus is reduced to %d%% when holding a weapon.",
				unarmedPartialEffect
			),
		["rank"] =
		{
			[const.GM] = "Chance to avoid attack entirely.",
		},
	},
	[const.Skills.Bow] =
	{
		["text"] =
			"",
		["rank"] =
		{
			[const.Master] = "two arrows per shot",
		},
	},
	[const.Skills.Blaster] =
	{
		["text"] =
			"",
		["rank"] =
		{
		},
	},
	[const.Skills.Shield] =
	{
		["text"] =
			string.format(
				"\n\nShield wearer reduces projectiles impact damage by %d%% per level multiplicatively.",
				shieldProjectileDamageReduction
			),
		["rank"] =
		{
			[const.GM] = "protects as a personal Shield spell",
		},
	},
	[const.Skills.Leather] =
	{
		["text"] =
			"\n\nSkilled armor wearer receives resistance against elemental damage.",
		["rank"] =
		{
		},
	},
	[const.Skills.Chain] =
	{
		["text"] =
			"\n\nSkilled armor wearer receives resistance against elemental damage.",
		["rank"] =
		{
			[const.GM] = "reduces physical damage to 2/3"
		},
	},
	[const.Skills.Plate] =
	{
		["text"] =
			"\n\nPlate armor wearer has a chance to cover team mate from physical attack.",
		["rank"] =
		{
			[const.Master] = "reduces physical damage to 1/2"
		},
	},
	[const.Skills.Dodging] =
	{
		["text"] =
			string.format(
				"\n\nBonus is reduced to %d%% when wearing an armor.",
				dodgingPartialEffect
			),
		["rank"] =
		{
			[const.GM] = "May use Dodging in leather armor.",
		},
	},
	[const.Skills.Armsmaster] =
	{
		["text"] =
			"",
		["rank"] =
		{
		},
	},
}

local learningRankMultipliers = {4, 5, 6, 8, }

-- monster engagement indexes and distances

local engagedMonsterIndexes = {}
local activationDistance = 0x1600
local engagementDistance = 0x1400
local followDistance = 0x1400

-- spell powers

local protectionSpellExtraMultiplier = 2

local spellPowers = {}
local spellPowersByName =
{
	-- direct damage
	
	["Fire Bolt"]		= {fixed =  3, variableMin =  1, variableMax =  4, },
	["Fireball"]		= {fixed =  4, variableMin =  1, variableMax =  4, },
	["Fire Spike"]		= {fixed =  0, variableMin =  1, variableMax = 40, },
	-- ["Immolation"]		= {fixed = 15, variableMin =  1, variableMax =  3, },
	-- ["Meteor Shower"]	= {fixed =  0, variableMin =  1, variableMax =  3, },
	-- ["Inferno"]			= {fixed =  0, variableMin =  1, variableMax =  4, },
	-- ["Incinerate"]		= {fixed = 21, variableMin =  1, variableMax = 21, },
	-- ["Sparks"]			= {fixed = 10, variableMin =  1, variableMax =  1, },
	["Lightning Bolt"]	= {fixed =  8, variableMin =  1, variableMax =  8, },
	["Implosion"]		= {fixed = 12, variableMin =  1, variableMax = 12, },
	-- ["Starburst"]		= {fixed =  0, variableMin =  1, variableMax =  6, },
	-- ["Poison Spray"]	= {fixed = 15, variableMin =  1, variableMax =  2, },
	["Ice Bolt"]		= {fixed =  4, variableMin =  1, variableMax = 5, },
	-- ["Acid Burst"]		= {fixed = 15, variableMin =  1, variableMax = 15, },
	["Ice Blast"]		= {fixed =  8, variableMin =  1, variableMax =  8, },
	["Deadly Swarm"]	= {fixed =  6, variableMin =  1, variableMax =  4, },
	["Blades"]			= {fixed =  9, variableMin =  1, variableMax =  9, },
	["Rock Blast"]		= {fixed =  4, variableMin =  1, variableMax =  6, },
	-- ["Death Blossom"]	= {fixed =  0, variableMin =  1, variableMax = 10, },
	-- ["Mass Distortion"]	= {fixed =  0, variableMin =  1, variableMax = 10, },
	-- ["Spirit Lash"]		= {fixed =  5, variableMin =  1, variableMax =  2, },
	["Mind Blast"]		= {fixed =  5, variableMin =  1, variableMax =  3, },
	-- ["Psychic Shock"]	= {fixed =  6, variableMin =  1, variableMax =  6, },
	["Harm"]			= {fixed =  8, variableMin =  1, variableMax =  3, },
	["Flying Fist"]		= {fixed = 12, variableMin =  1, variableMax = 10, },
	-- ["Light Bolt"]		= {fixed = 30, variableMin =  1, variableMax = 15, },
	["Destroy Undead"]	= {fixed = 12, variableMin =  1, variableMax = 12, },
	-- ["Prismatic Light"]	= {fixed =  0, variableMin =  1, variableMax =  8, },
	-- ["Sun Ray"]			= {fixed = 30, variableMin =  1, variableMax = 30, },
	["Toxic Cloud"]		= {fixed = 15, variableMin =  1, variableMax = 10, },
	-- ["Shrinking Ray"]	= {fixed = 30, variableMin =  1, variableMax = 15, },
	["Shrapmetal"]		= {fixed =  3, variableMin =  1, variableMax =  3, },
	["Dragon Breath"]	= {fixed =  0, variableMin =  1, variableMax = 15, },
	["Souldrinker"]		= {fixed = 25, variableMin =  1, variableMax =  2, },

}

-- prices

local templeHealingPricePerHP = 0.15
local templeHealingPricePerSP = 0.25
local innRoomPriceMultiplier = 0.25 -- comparing to full temple healing
local innFoodBaseQuantity = 20

-- book values

local modifiedBookValues =
{
	-- regular
	{
		[ 0] =    100,
		[ 1] =    200,
		[ 2] =    300,
		[ 3] =    500,
		[ 4] =   1000,
		[ 5] =   1500,
		[ 6] =   2500,
		[ 7] =   5000,
		[ 8] =  10000,
		[ 9] =  15000,
		[10] =  25000,
	},
	-- mirror
	{
		[ 0] =   1000,
		[ 1] =   1500,
		[ 2] =   2000,
		[ 3] =   3000,
		[ 4] =   5000,
		[ 5] =   7000,
		[ 6] =  10000,
		[ 7] =  15000,
		[ 8] =  20000,
		[ 9] =  35000,
		[10] =  50000,
	},
}

-- professions

local hirelingCosts =
{
	-- buff
	[const.NPCProfession.Chaplain]		=  200,
	[const.NPCProfession.Piper]			= 1000,
	-- combat
	[const.NPCProfession.Monk]			= 1000,
	[const.NPCProfession.ArmsMaster]	= 2000,
	[const.NPCProfession.WeaponsMaster]	= 3000,
	[const.NPCProfession.Squire]		= 4000,
	-- trading
	[const.NPCProfession.Duper]			=  400,
	[const.NPCProfession.Trader]		=  500,
	[const.NPCProfession.Merchant]		= 1000,
	-- alchemy
	[const.NPCProfession.Herbalist]		=  200,
	[const.NPCProfession.Apothecary]	=  400,
	-- identify
	[const.NPCProfession.Hunter]		=  100,
	[const.NPCProfession.Sage]			=  200,
	[const.NPCProfession.Scholar]		=  300,
}

----------------------------------------------------------------------------------------------------
-- helper functions
----------------------------------------------------------------------------------------------------

-- resolve attacker

local function Who(i, action)
	local t, kind = {}, i%8
	i = (i - kind)/8
	if i >= 0 and kind == 2 then
		local obj = Map.Objects[i]
		t.ObjectIndex, t.Object = i, obj
		i = obj.Owner
		kind = i%8
		i = (i - kind)/8
		if kind ~= 3 and obj.Spell ~= 0 then
			t.Spell, t.SpellSkill, t.SpellMastery = obj.Spell, obj.SpellSkill, obj.SpellMastery
		end
	end
	if i < 0 then
		return false  -- sometimes either initial attackerID or obj.Owner is negative
	elseif kind == 4 then
		t.PlayerSlot, t.Player = i, Party[i]
	elseif kind == 3 then
		local mon = Map.Monsters[i]
		t.MonsterIndex, t.Monster, t.MonsterAction = i, mon, action
		local sp, sk
		if action == 2 then
			sp, sk = mon.Spell, mon.SpellSkill
		elseif action == 3 then
			sp, sk = mon.Spell2, mon.Spell2Skill
		end
		t.Spell, t.SpellSkill, t.SpellMastery = sp, SplitSkill(sk)
	end
	return t
end

-- converts float int bytes representation to float

local function convertIntToFloat(x)

  local sign = 1
  if bit.band(x, 0x80000000) ~= 0 then sign = -1 end
	
  local mantissa = bit.band(x, 0x007FFFFF)
	
  local exponent = bit.band(bit.rshift(x, 23), 0xFF)
  if exponent == 0 then return 0 end
	
  mantissa = (math.ldexp(mantissa, -23) + 1) * sign
	
  return math.ldexp(mantissa, exponent - 127)
	
end

-- formats number for skill rank description

local textOffsetShift = 1
local skillRankColonWidth = 2
local skillRankMarginWidth = 4
local skillRankSpaceWidth = 2
local skillRankCharacterWidth = 6
local skillRankDelimiterWidth = 2
local skillRankValueWidth = 2 * skillRankCharacterWidth + 1 * skillRankSpaceWidth
local skillRankFieldWidth = skillRankMarginWidth + skillRankValueWidth + skillRankMarginWidth + skillRankDelimiterWidth
local skillRankValueOffset = skillRankMarginWidth + textOffsetShift
local skillRankCharacterOffset = skillRankCharacterWidth + skillRankSpaceWidth
local skillRankDelimiterOffset = skillRankMarginWidth + skillRankValueWidth + skillRankMarginWidth
local skillRankColonPosition = 49
local skillRankInitialPosition = skillRankColonPosition + skillRankColonWidth

local function formatSkillRankRow(values, offsetShifts)

	local formattedString = ""
	
	for index = 1, #values do

		local value = values[index]
		local offsetShift = (offsetShifts == nil and 0 or offsetShifts[index])
		
		if type(value) == "number" and value == 0 then
			value = ""
		end
		
		if type(value) == "number" then
			local numberString = tostring(value)
			numberString = (string.len(numberString) == 1 and " " or "") .. numberString
			for i = 1, 2 do
				local digitCharacter = string.sub(numberString, i, i)
				formattedString = formattedString ..
					string.format("\t%03d%s",
						skillRankInitialPosition + (index - 1) * skillRankFieldWidth + skillRankValueOffset + (i - 1) * skillRankCharacterOffset,
						digitCharacter
					)
			end
			formattedString = formattedString ..
				string.format("\t%03d|",
					skillRankInitialPosition + (index - 1) * skillRankFieldWidth + skillRankDelimiterOffset
				)
		else
			formattedString = formattedString ..
				string.format("\t%03d%s\t%03d|",
					skillRankInitialPosition + (index - 1) * skillRankFieldWidth + skillRankValueOffset + offsetShift,
					value,
					skillRankInitialPosition + (index - 1) * skillRankFieldWidth + skillRankDelimiterOffset
				)
		end
		
	end
	
	return formattedString
	
end

local function formatSkillHeader(skill, text)

	local skillHeaders;
	local skillOffsetShifts;
	local baseRecoveryText = "";
	
	if skill == const.Skills.Bow or skill == const.Skills.Blaster then
		skillHeaders = {"at", "sp", "da", }
		skillOffsetShifts = {2, 1, 0, }
	elseif skill >= const.Skills.Staff and skill <= const.Skills.Blaster then
		skillHeaders = {"at", "sp", "da", "AC", }
		skillOffsetShifts = {2, 1, 0, 0, }
	elseif skill == const.Skills.Unarmed then
		skillHeaders = {"at", "sp", "da", }
		skillOffsetShifts = {2, 1, 0, }
	elseif skill == const.Skills.Shield then
		skillHeaders = {"AC", "RP", }
		skillOffsetShifts = {0, 0, }
	elseif skill >= const.Skills.Shield and skill <= const.Skills.Plate then
		skillHeaders = {"AC", "RP", "re", }
		skillOffsetShifts = {0, 0, 1, }
	elseif skill == const.Skills.Dodging then
		skillHeaders = {"AC", }
		skillOffsetShifts = {0, }
	elseif skill == const.Skills.Armsmaster then
		skillHeaders = {"at", "sp", "da", }
		skillOffsetShifts = {2, 1, 0, }
	end
	
	if skill >= const.Skills.Staff and skill <= const.Skills.Blaster then
		baseRecoveryText =
			string.format(
				"\n\nBase recovery: %d",
				100 - newWeaponBaseRecoveryBonuses[skill]
			)
	else
		baseRecoveryText = ""
	end
	
	return
		text
		..
		baseRecoveryText
		..
		string.format(
			"\n\nBonus increment per skill level\n------------------------------------------------------------\n\t%03d:%s\t000",
			skillRankColonPosition,
			formatSkillRankRow(skillHeaders, skillOffsetShifts)
		)
	
end

local function formatSkilDescriptionlRank(skill, rank)

	local values
	
	if skill == const.Skills.Bow or skill == const.Skills.Blaster then
		values =
		{
			newWeaponSkillAttackBonuses[skill][rank],
			newWeaponSkillRecoveryBonuses[skill][rank],
			newWeaponSkillDamageBonuses[skill][rank],
		}
	elseif skill >= const.Skills.Staff and skill <= const.Skills.Blaster then
		values =
		{
			newWeaponSkillAttackBonuses[skill][rank],
			newWeaponSkillRecoveryBonuses[skill][rank],
			newWeaponSkillDamageBonuses[skill][rank],
			newWeaponSkillACBonuses[skill][rank],
		}
	elseif skill == const.Skills.Unarmed then
		values =
		{
			newWeaponSkillAttackBonuses[skill][rank],
			newWeaponSkillRecoveryBonuses[skill][rank],
			newWeaponSkillDamageBonuses[skill][rank],
		}
	elseif skill == const.Skills.Shield then
		values =
		{
			newArmorSkillACBonuses[skill][rank],
			newArmorSkillRecoveryPenalties[skill][rank],
		}
	elseif skill >= const.Skills.Shield and skill <= const.Skills.Plate then
		values =
		{
			newArmorSkillACBonuses[skill][rank],
			newArmorSkillRecoveryPenalties[skill][rank],
			newArmorSkillResistanceBonuses[skill][rank],
		}
	elseif skill == const.Skills.Dodging then
		values =
		{
			newArmorSkillACBonuses[skill][rank],
		}
	elseif skill == const.Skills.Armsmaster then
		values =
		{
			newArmsmasterSkillAttackBonuses[rank],
			newArmsmasterSkillRecoveryBonuses[rank],
			newArmsmasterSkillDamageBonuses[rank],
		}
	end

	return formatSkillRankRow(values)
	
end

local function updateSkillDescriptions()

	for skill, skillDescription in pairs(skillDescriptions) do
		Game.SkillDescriptions[skill] = Game.SkillDescriptions[skill] .. formatSkillHeader(skill, skillDescription["text"])
		for rank = const.Novice, const.GM do
			SkillDescriptionsRanks[rank][skill] = formatSkilDescriptionlRank(skill, rank)
			if skillDescription["rank"][rank] ~= nil then
				SkillDescriptionsRanks[rank][skill] = SkillDescriptionsRanks[rank][skill] .. skillDescription["rank"][rank]
			end
		end
	end
	
end

-- conversions

local function GetPlayer(p)
	local i = (p - Party.PlayersArray["?ptr"]) / Party.PlayersArray[0]["?size"]
	return i, Party.PlayersArray[i]
end
local function GetPlayerPointer(playerIndex)
	return Party.PlayersArray["?ptr"] + playerIndex * Party.PlayersArray[0]["?size"]
end

local function GetMonster(monsterPointer)
	if monsterPointer == 0 then
		return
	end
	local i = (monsterPointer - Map.Monsters["?ptr"]) / Map.Monsters[0]["?size"]
	return i, Map.Monsters[i]
end

local function GetMonsterTxt(p)
	if p == 0 then
		return
	end
	local i = (p - Game.MonstersTxt["?ptr"]) / Game.MonstersTxt[0]["?size"]
	return i, Game.MonstersTxt[i]
end

-- monster data

local function GetMonsterArmorClass(monster)

	local monsterArmorClassBase = monster.ArmorClass
	local monsterArmorClassHourOfPowerBonus = 0
	local monsterArmorClassStoneSkinBonus = 0
	
	local armorHalvedBuff = monster.SpellBuffs[const.MonsterBuff.ArmorHalved]
	if armorHalvedBuff.ExpireTime > 0 then
		monsterArmorClassBase = monsterArmorClassBase / 2
	end
	
	local hourOfPowerBuff = monster.SpellBuffs[const.MonsterBuff.HourOfPower]
	if hourOfPowerBuff.ExpireTime > 0 then
		monsterArmorClassHourOfPowerBonus = hourOfPowerBuff.Power
	end
	
	local stoneSkinBuff = monster.SpellBuffs[const.MonsterBuff.StoneSkin]
	if stoneSkinBuff.ExpireTime > 0 then
		monsterArmorClassStoneSkinBonus = stoneSkinBuff.Power
	end
	
	local monsterArmorClass = monsterArmorClassBase + math.max(monsterArmorClassHourOfPowerBonus, monsterArmorClassStoneSkinBonus)
	
	return monsterArmorClass
	
end

local function GetMonsterAttack(monster)
	
	local monsterAttackBase = monster.Level
	local monsterAttackHourOfPowerBonus = 0
	local monsterAttackBlessBonus = 0
	local monsterAttackFateBonus = 0
	
	local hourOfPowerBuff = monster.SpellBuffs[const.MonsterBuff.HourOfPower]
	if hourOfPowerBuff.ExpireTime > 0 then
		monsterAttackHourOfPowerBonus = hourOfPowerBuff.Power
	end
	
	local blessBuff = monster.SpellBuffs[const.MonsterBuff.Bless]
	if blessBuff.ExpireTime > 0 then
		monsterAttackBlessBonus = blessBuff.Power
	end
	
	local fateBuff = monster.SpellBuffs[const.MonsterBuff.Fate]
	if fateBuff.ExpireTime > 0 then
		monsterAttackFateBonus = fateBuff.Power
	end
	
	local monsterAttack = monsterAttackBase + math.max(monsterAttackHourOfPowerBonus, monsterAttackBlessBonus) + monsterAttackFateBonus
	
	return monsterAttack
	
end

-- collects relevant player weapon data

local function getMeleeInfo(player)

	local equippedItemMainHand = player.EquippedItems[const.ItemSlot.MainHand]
	local equippedItemExtraHand = player.EquippedItems[const.ItemSlot.ExtraHand]
	
	local meleeInfo =
	{
		["equipped"] = false,
		["twoHanded"] = false,
		["dualWield"] = false,
		["main"] =
		{
			["item"] = nil,
			["skill"] = nil,
			["level"] = 0,
			["rank"] = 1,
		},
		["extra"] =
		{
			["item"] = nil,
			["skill"] = nil,
			["level"] = 0,
			["rank"] = 1,
		},
		["unarmed"] =
		{
			["applied"] = false,
			["staff"] = false,
			["level"] = 0,
			["rank"] = 1,
		},
		["armsmaster"] =
		{
			["applied"] = false,
			["level"] = 0,
			["rank"] = 1,
		},
	}
	
	if equippedItemMainHand ~= 0 then
	
		local itemMainHand = player.Items[equippedItemMainHand]
		local itemTxtMainHand = Game.ItemsTxt[itemMainHand.Number]
		
		if itemTxtMainHand.Skill >= const.Skills.Staff and itemTxtMainHand.Skill <= const.Skills.Spear or itemTxtMainHand.Skill == const.Skills.Mace then

			meleeInfo["equipped"] = true
			meleeInfo["main"]["item"] = itemMainHand
			meleeInfo["main"]["skill"] = itemTxtMainHand.Skill
			meleeInfo["main"]["level"], meleeInfo["main"]["rank"] = SplitSkill(player:GetSkill(itemTxtMainHand.Skill))
			
			if equippedItemExtraHand ~= 0 then
			
				local itemExtraHand = player.Items[equippedItemExtraHand]
				local itemTxtExtraHand = Game.ItemsTxt[itemExtraHand.Number]
				
				if itemTxtExtraHand.Skill == const.Skills.Sword or itemTxtExtraHand.Skill == const.Skills.Dagger then
				
					meleeInfo["dualWield"] = true
					meleeInfo["extra"]["item"] = itemExtraHand
					meleeInfo["extra"]["skill"] = itemTxtExtraHand.Skill
					meleeInfo["extra"]["level"], meleeInfo["extra"]["rank"] = SplitSkill(player:GetSkill(itemTxtExtraHand.Skill))
					
				end
				
			else
			
				-- two handed weapon
			
				if itemTxtMainHand.EquipStat + 1 == const.ItemType.Weapon2H or itemTxtMainHand.Skill == const.Skills.Spear then
				
					meleeInfo["twoHanded"] = true
				
				end
				
			end
			
		end
	
	end
	
	-- unarmed
	
	meleeInfo["unarmed"]["level"], meleeInfo["unarmed"]["rank"] = SplitSkill(player:GetSkill(const.Skills.Unarmed))
	
	if meleeInfo["unarmed"]["level"] > 0 then
	
		-- barehands
		
		if equippedItemMainHand == 0 and equippedItemExtraHand == 0 then
		
			meleeInfo["unarmed"]["applied"] = true
			
		-- Staff GM + unarmed
		
		elseif meleeInfo["main"]["skill"] == const.Skills.Staff and meleeInfo["main"]["rank"] == const.GM then
		
			meleeInfo["unarmed"]["applied"] = true
			meleeInfo["unarmed"]["staff"] = true
			
		end
		
	end
	
	-- armsmaster
	
	meleeInfo["armsmaster"]["level"], meleeInfo["armsmaster"]["rank"] = SplitSkill(player:GetSkill(const.Skills.Armsmaster))
	
	if meleeInfo["armsmaster"]["level"] > 0 then
	
		meleeInfo["armsmaster"]["applied"] = true
		
	end
					
	return meleeInfo
	
end

local function getRangedInfo(player)

	local equippedItemMainHand = player.EquippedItems[const.ItemSlot.MainHand] 
	local equippedItemBow = player.EquippedItems[const.ItemSlot.Bow]
	
	local rangedInfo =
	{
		["equipped"] = false,
		["skill"] = nil,
		["level"] = 0,
		["rank"] = 1,
	}
	
	if equippedItemMainHand ~= 0 then
	
		local itemMainHand = player.Items[equippedItemMainHand]
		local itemTxtMainHand = Game.ItemsTxt[itemMainHand.Number]
		
		if itemTxtMainHand.Skill == const.Skills.Blaster then
		
			rangedInfo["equipped"] = true
			rangedInfo["skill"] = itemTxtMainHand.Skill
			rangedInfo["level"], rangedInfo["rank"] = SplitSkill(player:GetSkill(itemTxtMainHand.Skill))
			
		end
		
	end
	
	if not rangedInfo["equipped"] and equippedItemBow ~= 0 then
	
		local itemBow = player.Items[equippedItemBow]
		local itemTxtBow = Game.ItemsTxt[itemBow.Number]
		
		if itemTxtBow.Skill == const.Skills.Bow then
		
			rangedInfo["equipped"] = true
			rangedInfo["skill"] = itemTxtBow.Skill
			rangedInfo["level"], rangedInfo["rank"] = SplitSkill(player:GetSkill(itemTxtBow.Skill))
			
		end
		
	end
	
	return rangedInfo
	
end

local function getDefenseInfo(player)

	local equippedItemShield = player.EquippedItems[const.ItemSlot.ExtraHand]
	local equippedItemArmor = player.EquippedItems[const.ItemSlot.Armor]
	
	local defenseInfo =
	{
		["shield"] =
		{
			["equipped"] = false,
			["level"] = 0,
			["rank"] = 1,
		},
		["armor"] =
		{
			["equipped"] = false,
			["level"] = 0,
			["rank"] = 1,
		},
		["dodging"] =
		{
			["applied"] = false,
			["leather"] = false,
			["level"] = 0,
			["rank"] = 1,
		},
	}
	
	-- shield
	
	if equippedItemShield ~= 0 then
	
		local itemShield = player.Items[equippedItemShield]
		local itemTxtShield = Game.ItemsTxt[itemShield.Number]
		
		if itemTxtShield.Skill == const.Skills.Shield then
		
			defenseInfo["shield"]["equipped"] = true
			defenseInfo["shield"]["skill"] = itemTxtShield.Skill
			defenseInfo["shield"]["level"], defenseInfo["shield"]["rank"] = SplitSkill(player:GetSkill(itemTxtShield.Skill))
			
		end
		
	end
	
	-- armor
	
	if equippedItemArmor ~= 0 then
	
		local itemArmor = player.Items[equippedItemArmor]
		local itemTxtArmor = Game.ItemsTxt[itemArmor.Number]
		
		if itemTxtArmor.Skill == const.Skills.Armor then
		
			defenseInfo["armor"]["equipped"] = true
			defenseInfo["armor"]["skill"] = itemTxtArmor.Skill
			defenseInfo["armor"]["level"], defenseInfo["armor"]["rank"] = SplitSkill(player:GetSkill(itemTxtArmor.Skill))
			
		end
		
	end
	
	-- dodging
	
	defenseInfo["dodging"]["skill"], defenseInfo["dodging"]["rank"] = SplitSkill(player:GetSkill(const.Skills.Dodging))
	
	if defenseInfo["dodging"]["skill"] > 0 then
	
		-- should not wear shield/armor for dodging skill to apply
		
		if not defenseInfo["shield"]["equipped"] and not defenseInfo["armor"]["equipped"] then
		
			defenseInfo["dodging"]["applied"] = true
			
		-- GM Dodging can use skill in leather armor
		
		elseif not defenseInfo["shield"]["equipped"] and defenseInfo["armor"]["skill"] == const.Skills.Leather and defenseInfo["dodging"]["rank"] == const.GM then
		
			defenseInfo["dodging"]["applied"] = true
			defenseInfo["dodging"]["leather"] = true
			
		end
		
	end
	
	return defenseInfo
	
end

-- calculate recovery correction

local function getRangedRecoveryCorrection(ranged)

	if not ranged.equipped then
		return 0
	end
	
	local correction = 0
	
	-- calculate old and new recovery bonuses

	local oldRecoveryBonus = 0
	local newRecoveryBonus = 0

	-- base bonuses
	
	oldRecoveryBonus = oldRecoveryBonus + oldWeaponBaseRecoveryBonuses[ranged.skill]
	newRecoveryBonus = newRecoveryBonus + newWeaponBaseRecoveryBonuses[ranged.skill]
	
	-- skill bonuses
	
	oldRecoveryBonus = oldRecoveryBonus + oldWeaponSkillRecoveryBonuses[ranged.skill][ranged.rank] * ranged.level
	newRecoveryBonus = newRecoveryBonus + newWeaponSkillRecoveryBonuses[ranged.skill][ranged.rank] * ranged.level
	
	-- replace old with new bonus
	
	correction = correction 
		+ oldRecoveryBonus
		- newRecoveryBonus
		
	return correction
	
end

local function getMeleeRecoveryCorrection(melee)

	if not melee.equipped then
		return 0
	end
	
	local correction = 0
	
	-- single wield
	
	if not melee.dualWield then
	
		-- calculate old and new recovery bonuses
	
		local oldRecoveryBonus = 0
		local newRecoveryBonus = 0
	
		-- base bonuses
		
		oldRecoveryBonus = oldRecoveryBonus + oldWeaponBaseRecoveryBonuses[melee.main.skill]
		newRecoveryBonus = newRecoveryBonus + newWeaponBaseRecoveryBonuses[melee.main.skill]
		
		-- skill bonuses
		
		oldRecoveryBonus = oldRecoveryBonus + (oldWeaponSkillRecoveryBonuses[melee.main.skill][melee.main.rank] * melee.main.level)
		newRecoveryBonus = newRecoveryBonus + (newWeaponSkillRecoveryBonuses[melee.main.skill][melee.main.rank] * melee.main.level)
		
		-- armsmaster bonus
		
		if melee.armsmaster.applied then
			oldRecoveryBonus = oldRecoveryBonus + oldArmsmasterSkillRecoveryBonuses[melee.armsmaster.rank] * melee.armsmaster.level
			newRecoveryBonus = newRecoveryBonus + newArmsmasterSkillRecoveryBonuses[melee.armsmaster.rank] * melee.armsmaster.level
		end
		
		-- replace old with new bonus
		
		correction = correction 
			+ oldRecoveryBonus
			- newRecoveryBonus
		
	-- dual wield
	
	else
	
		local oldRecoveryWeapon = oldWeaponBaseRecoveryBonuses[melee.main.skill] <= oldWeaponBaseRecoveryBonuses[melee.extra.skill] and melee.main or melee.extra
	
		-- calculate old and new recovery bonuses
		
		local oldRecoveryBonus = 0
		local newRecoveryBonusMain = 0
		local newRecoveryBonusExtra = 0
		
		-- base bonuses
		
		oldRecoveryBonus = oldRecoveryBonus + oldWeaponBaseRecoveryBonuses[oldRecoveryWeapon.skill]
		newRecoveryBonusMain = newRecoveryBonusMain + newWeaponBaseRecoveryBonuses[melee.main.skill]
		newRecoveryBonusExtra = newRecoveryBonusExtra + newWeaponBaseRecoveryBonuses[melee.main.skill]
		
		-- swiftness
		
		if oldRecoveryWeapon.item.Bonus2 == 59 then
			oldRecoveryBonus = oldRecoveryBonus + 20
		end
		if melee.main.item.Bonus2 == 59 then
			newRecoveryBonusMain = newRecoveryBonusMain + 20
		end
		if melee.extra.item.Bonus2 == 59 then
			newRecoveryBonusExtra = newRecoveryBonusExtra + 20
		end
		
		-- skill bonuses
		
		oldRecoveryBonus = oldRecoveryBonus + oldWeaponSkillRecoveryBonuses[oldRecoveryWeapon.skill][oldRecoveryWeapon.rank] * oldRecoveryWeapon.level
		newRecoveryBonusMain = newRecoveryBonusMain + newWeaponSkillRecoveryBonuses[melee.main.skill][melee.main.rank] * melee.main.level
		newRecoveryBonusExtra = newRecoveryBonusExtra + newWeaponSkillRecoveryBonuses[melee.extra.skill][melee.extra.rank] * melee.extra.level
		
		-- armsmaster bonus
		
		if (melee.equipped or melee.unarmed.applied) and melee.armsmaster.applied then
			oldRecoveryBonus = oldRecoveryBonus + oldArmsmasterSkillRecoveryBonuses[melee.armsmaster.rank] * melee.armsmaster.level
			newRecoveryBonusMain = newRecoveryBonusMain + newArmsmasterSkillRecoveryBonuses[melee.armsmaster.rank] * melee.armsmaster.level
		end
		
		-- replace old with new bonus
		
		correction = correction
			+ oldRecoveryBonus
			- (newRecoveryBonusMain + newRecoveryBonusExtra)
		
	end
	
	return correction
	
end

-- generate random spell power

local function randomSpellPower(spellPower, level)
	local r = spellPower.fixed
	for i = 1, level do
		r = r + math.random(spellPower.variableMin, spellPower.variableMax)
	end
	return r
end

-- get party experience level

local function getPartyExperienceLevel()

	local partyExperience = 0
	
	for i = 0, 3 do
		partyExperience = partyExperience + Party.Players[i].Experience
	end
	
	local averagePlayerExperience = partyExperience / 4
	
	local partyExperienceLevel = math.floor((1 + math.sqrt(1 + (4 * averagePlayerExperience / 500))) / 2)
	
	return partyExperienceLevel

end

-- special weapon effects

local function applySpecialWeaponEffect(player, monster)

	local melee = getMeleeInfo(player)
	local skill = melee.main.skill
	local level = melee.main.level
	local rank = melee.main.rank
	
	local extraHarm = 0
	
	-- staff
	
	if skill == const.Skills.Staff then
	
		local effectChance = staffEffect["base"] + staffEffect["multiplier"] * level
		
		if math.random(1, 100) <= effectChance then
		
			local magicSkill = const.Skills.Fire + math.random() * 4
			local magicLevel, magicRank = SplitSkill(player:GetSkill(magicSkill))
			
			if magicLevel > 0 then
			
				local damage = magicLevel * staffEffect["magicMultiplier"]
				local damageKind = magicSkill - const.Skills.Fire + const.Damage.Fire
				local takenDamage = monster:CalcTakenDamage(damageKind, damage)
				extraHarm = extraHarm + takenDamage
				
			end
			
		end
		
	end
	
	-- mace
	
	if skill == const.Skills.Mace then
		
		local effectChance = maceEffect[rank]["base"] + maceEffect[rank]["multiplier"] * level
		local duration = maceEffect[rank]["duration"]
		
		if math.random(1, 100) <= effectChance then
		
			local spellBuff = monster.SpellBuffs[const.MonsterBuff.Paralyze]
			spellBuff:Set(Game.Time + const.Minute * duration, rank, 0, 0, 0)
			
		end
		
	end
	
	return extraHarm
	
end

----------------------------------------------------------------------------------------------------
-- game initialization
----------------------------------------------------------------------------------------------------

function events.GameInitialized2()

	-- class SPFactor
	
	Game.Classes.SPFactor[const.Class.Thief]	= 1
	Game.Classes.SPStats[const.Class.Thief]		= 1
	Game.Classes.SPFactor[const.Class.Monk]		= 1
	Game.Classes.SPStats[const.Class.Monk]		= 2
	Game.Classes.SPFactor[const.Class.Ranger]	= 1
	Game.Classes.SPStats[const.Class.Ranger]	= 3
	
	-- class skills
	
	Game.Classes.Skills[const.Class.Knight]			[const.Skills.Shield]			= const.Expert
	Game.Classes.Skills[const.Class.Cavalier]		[const.Skills.Shield]			= const.Expert
	Game.Classes.Skills[const.Class.Champion]		[const.Skills.Shield]			= const.Expert
	Game.Classes.Skills[const.Class.BlackKnight]	[const.Skills.Shield]			= const.Expert
	Game.Classes.Skills[const.Class.Knight]			[const.Skills.Dodging]			= 0
	Game.Classes.Skills[const.Class.Cavalier]		[const.Skills.Dodging]			= 0
	Game.Classes.Skills[const.Class.Champion]		[const.Skills.Dodging]			= 0
	Game.Classes.Skills[const.Class.BlackKnight]	[const.Skills.Dodging]			= 0
	Game.Classes.Skills[const.Class.Knight]			[const.Skills.Repair]			= const.Master
	Game.Classes.Skills[const.Class.Cavalier]		[const.Skills.Repair]			= const.Master
	Game.Classes.Skills[const.Class.Champion]		[const.Skills.Repair]			= const.Master
	Game.Classes.Skills[const.Class.BlackKnight]	[const.Skills.Repair]			= const.Master
	Game.Classes.Skills[const.Class.Knight]			[const.Skills.DisarmTraps]		= const.Expert
	Game.Classes.Skills[const.Class.Cavalier]		[const.Skills.DisarmTraps]		= const.Master
	Game.Classes.Skills[const.Class.Champion]		[const.Skills.DisarmTraps]		= const.Master
	Game.Classes.Skills[const.Class.BlackKnight]	[const.Skills.DisarmTraps]		= const.Master
	
	Game.Classes.Skills[const.Class.Monk]			[const.Skills.Spirit]			= 0
	Game.Classes.Skills[const.Class.Initiate]		[const.Skills.Spirit]			= const.Novice
	Game.Classes.Skills[const.Class.Master]			[const.Skills.Spirit]			= const.Expert
	Game.Classes.Skills[const.Class.Ninja]			[const.Skills.Spirit]			= const.Expert
	Game.Classes.Skills[const.Class.Monk]			[const.Skills.Mind]				= const.Novice
	Game.Classes.Skills[const.Class.Initiate]		[const.Skills.Mind]				= const.Expert
	Game.Classes.Skills[const.Class.Master]			[const.Skills.Mind]				= const.Master
	Game.Classes.Skills[const.Class.Ninja]			[const.Skills.Mind]				= const.Master
	Game.Classes.Skills[const.Class.Monk]			[const.Skills.Body]				= 0
	Game.Classes.Skills[const.Class.Initiate]		[const.Skills.Body]				= const.Novice
	Game.Classes.Skills[const.Class.Master]			[const.Skills.Body]				= const.Expert
	Game.Classes.Skills[const.Class.Ninja]			[const.Skills.Body]				= const.Expert
	Game.Classes.Skills[const.Class.Monk]			[const.Skills.Meditation]		= const.Novice
	Game.Classes.Skills[const.Class.Initiate]		[const.Skills.Meditation]		= const.Novice
	Game.Classes.Skills[const.Class.Master]			[const.Skills.Meditation]		= const.Novice
	Game.Classes.Skills[const.Class.Ninja]			[const.Skills.Meditation]		= const.Novice
	Game.Classes.Skills[const.Class.Monk]			[const.Skills.Perception]		= 0
	Game.Classes.Skills[const.Class.Initiate]		[const.Skills.Perception]		= 0
	Game.Classes.Skills[const.Class.Master]			[const.Skills.Perception]		= 0
	Game.Classes.Skills[const.Class.Ninja]			[const.Skills.Perception]		= 0
	Game.Classes.Skills[const.Class.Monk]			[const.Skills.DisarmTraps]		= const.Novice
	Game.Classes.Skills[const.Class.Initiate]		[const.Skills.DisarmTraps]		= const.Expert
	Game.Classes.Skills[const.Class.Master]			[const.Skills.DisarmTraps]		= const.Expert
	Game.Classes.Skills[const.Class.Ninja]			[const.Skills.DisarmTraps]		= const.Expert
	Game.Classes.Skills[const.Class.Monk]			[const.Skills.IdentifyMonster]	= 0
	Game.Classes.Skills[const.Class.Initiate]		[const.Skills.IdentifyMonster]	= 0
	Game.Classes.Skills[const.Class.Master]			[const.Skills.IdentifyMonster]	= 0
	Game.Classes.Skills[const.Class.Ninja]			[const.Skills.IdentifyMonster]	= 0
	Game.Classes.Skills[const.Class.Monk]			[const.Skills.Stealing]			= const.Novice
	Game.Classes.Skills[const.Class.Initiate]		[const.Skills.Stealing]			= const.Novice
	Game.Classes.Skills[const.Class.Master]			[const.Skills.Stealing]			= const.Expert
	Game.Classes.Skills[const.Class.Ninja]			[const.Skills.Stealing]			= const.Expert
	
	Game.Classes.Skills[const.Class.Thief]			[const.Skills.Axe]				= const.Expert
	Game.Classes.Skills[const.Class.Rogue]			[const.Skills.Axe]				= const.Expert
	Game.Classes.Skills[const.Class.Spy]			[const.Skills.Axe]				= const.Expert
	Game.Classes.Skills[const.Class.Assassin]		[const.Skills.Axe]				= const.Expert
	Game.Classes.Skills[const.Class.Thief]			[const.Skills.Unarmed]			= const.Master
	Game.Classes.Skills[const.Class.Rogue]			[const.Skills.Unarmed]			= const.Master
	Game.Classes.Skills[const.Class.Spy]			[const.Skills.Unarmed]			= const.Master
	Game.Classes.Skills[const.Class.Assassin]		[const.Skills.Unarmed]			= const.Master
	Game.Classes.Skills[const.Class.Thief]			[const.Skills.Fire]				= const.Novice
	Game.Classes.Skills[const.Class.Rogue]			[const.Skills.Fire]				= const.Expert
	Game.Classes.Skills[const.Class.Spy]			[const.Skills.Fire]				= const.Expert
	Game.Classes.Skills[const.Class.Assassin]		[const.Skills.Fire]				= const.Expert
	Game.Classes.Skills[const.Class.Thief]			[const.Skills.Air]				= const.Novice
	Game.Classes.Skills[const.Class.Rogue]			[const.Skills.Air]				= const.Expert
	Game.Classes.Skills[const.Class.Spy]			[const.Skills.Air]				= const.Expert
	Game.Classes.Skills[const.Class.Assassin]		[const.Skills.Air]				= const.Expert
	Game.Classes.Skills[const.Class.Thief]			[const.Skills.Meditation]		= const.Novice
	Game.Classes.Skills[const.Class.Rogue]			[const.Skills.Meditation]		= const.Novice
	Game.Classes.Skills[const.Class.Spy]			[const.Skills.Meditation]		= const.Novice
	Game.Classes.Skills[const.Class.Assassin]		[const.Skills.Meditation]		= const.Novice
	Game.Classes.Skills[const.Class.Thief]			[const.Skills.Perception]		= const.Novice
	Game.Classes.Skills[const.Class.Rogue]			[const.Skills.Perception]		= const.Novice
	Game.Classes.Skills[const.Class.Spy]			[const.Skills.Perception]		= const.Novice
	Game.Classes.Skills[const.Class.Assassin]		[const.Skills.Perception]		= const.Novice
	
	Game.Classes.Skills[const.Class.Paladin]		[const.Skills.Shield]			= const.Expert
	Game.Classes.Skills[const.Class.Crusader]		[const.Skills.Shield]			= const.Expert
	Game.Classes.Skills[const.Class.Hero]			[const.Skills.Shield]			= const.Expert
	Game.Classes.Skills[const.Class.Villain]		[const.Skills.Shield]			= const.Expert
	Game.Classes.Skills[const.Class.Paladin]		[const.Skills.Dodging]			= 0
	Game.Classes.Skills[const.Class.Crusader]		[const.Skills.Dodging]			= 0
	Game.Classes.Skills[const.Class.Hero]			[const.Skills.Dodging]			= 0
	Game.Classes.Skills[const.Class.Villain]		[const.Skills.Dodging]			= 0
	Game.Classes.Skills[const.Class.Paladin]		[const.Skills.Spirit]			= const.Expert
	Game.Classes.Skills[const.Class.Crusader]		[const.Skills.Spirit]			= const.Master
	Game.Classes.Skills[const.Class.Hero]			[const.Skills.Spirit]			= const.GM
	Game.Classes.Skills[const.Class.Villain]		[const.Skills.Spirit]			= const.GM
	Game.Classes.Skills[const.Class.Paladin]		[const.Skills.Light]			= const.Novice
	Game.Classes.Skills[const.Class.Crusader]		[const.Skills.Light]			= const.Expert
	Game.Classes.Skills[const.Class.Hero]			[const.Skills.Light]			= const.Master
	Game.Classes.Skills[const.Class.Villain]		[const.Skills.Light]			= const.Expert
	Game.Classes.Skills[const.Class.Paladin]		[const.Skills.Dark]				= 0
	Game.Classes.Skills[const.Class.Crusader]		[const.Skills.Dark]				= 0
	Game.Classes.Skills[const.Class.Hero]			[const.Skills.Dark]				= 0
	Game.Classes.Skills[const.Class.Villain]		[const.Skills.Dark]				= const.Expert
	Game.Classes.Skills[const.Class.Paladin]		[const.Skills.IdentifyItem]		= const.Expert
	Game.Classes.Skills[const.Class.Crusader]		[const.Skills.IdentifyItem]		= const.Expert
	Game.Classes.Skills[const.Class.Hero]			[const.Skills.IdentifyItem]		= const.Expert
	Game.Classes.Skills[const.Class.Villain]		[const.Skills.IdentifyItem]		= const.Expert
	Game.Classes.Skills[const.Class.Paladin]		[const.Skills.DisarmTraps]		= const.Novice
	Game.Classes.Skills[const.Class.Crusader]		[const.Skills.DisarmTraps]		= const.Novice
	Game.Classes.Skills[const.Class.Hero]			[const.Skills.DisarmTraps]		= const.Novice
	Game.Classes.Skills[const.Class.Villain]		[const.Skills.DisarmTraps]		= const.Novice
	Game.Classes.Skills[const.Class.Paladin]		[const.Skills.IdentifyMonster]	= const.Novice
	Game.Classes.Skills[const.Class.Crusader]		[const.Skills.IdentifyMonster]	= const.Novice
	Game.Classes.Skills[const.Class.Hero]			[const.Skills.IdentifyMonster]	= const.Novice
	Game.Classes.Skills[const.Class.Villain]		[const.Skills.IdentifyMonster]	= const.Novice
	
	Game.Classes.Skills[const.Class.Archer]			[const.Skills.Axe]				= const.Master
	Game.Classes.Skills[const.Class.WarriorMage]	[const.Skills.Axe]				= const.Master
	Game.Classes.Skills[const.Class.MasterArcher]	[const.Skills.Axe]				= const.Master
	Game.Classes.Skills[const.Class.Sniper]			[const.Skills.Axe]				= const.Master
	Game.Classes.Skills[const.Class.Archer]			[const.Skills.Fire]				= const.Expert
	Game.Classes.Skills[const.Class.WarriorMage]	[const.Skills.Fire]				= const.Master
	Game.Classes.Skills[const.Class.MasterArcher]	[const.Skills.Fire]				= const.GM
	Game.Classes.Skills[const.Class.Sniper]			[const.Skills.Fire]				= const.GM
	Game.Classes.Skills[const.Class.Archer]			[const.Skills.Air]				= const.Expert
	Game.Classes.Skills[const.Class.WarriorMage]	[const.Skills.Air]				= const.Master
	Game.Classes.Skills[const.Class.MasterArcher]	[const.Skills.Air]				= const.GM
	Game.Classes.Skills[const.Class.Sniper]			[const.Skills.Air]				= const.GM
	Game.Classes.Skills[const.Class.Archer]			[const.Skills.Light]			= 0
	Game.Classes.Skills[const.Class.WarriorMage]	[const.Skills.Light]			= 0
	Game.Classes.Skills[const.Class.MasterArcher]	[const.Skills.Light]			= const.Expert
	Game.Classes.Skills[const.Class.Sniper]			[const.Skills.Light]			= 0
	Game.Classes.Skills[const.Class.Archer]			[const.Skills.Dark]				= const.Novice
	Game.Classes.Skills[const.Class.WarriorMage]	[const.Skills.Dark]				= const.Expert
	Game.Classes.Skills[const.Class.MasterArcher]	[const.Skills.Dark]				= const.Expert
	Game.Classes.Skills[const.Class.Sniper]			[const.Skills.Dark]				= const.Master
	Game.Classes.Skills[const.Class.Archer]			[const.Skills.IdentifyItem]		= const.Novice
	Game.Classes.Skills[const.Class.WarriorMage]	[const.Skills.IdentifyItem]		= const.Novice
	Game.Classes.Skills[const.Class.MasterArcher]	[const.Skills.IdentifyItem]		= const.Novice
	Game.Classes.Skills[const.Class.Sniper]			[const.Skills.IdentifyItem]		= const.Novice
	Game.Classes.Skills[const.Class.Archer]			[const.Skills.Merchant]			= const.Novice
	Game.Classes.Skills[const.Class.WarriorMage]	[const.Skills.Merchant]			= const.Novice
	Game.Classes.Skills[const.Class.MasterArcher]	[const.Skills.Merchant]			= const.Novice
	Game.Classes.Skills[const.Class.Sniper]			[const.Skills.Merchant]			= const.Novice
	Game.Classes.Skills[const.Class.Archer]			[const.Skills.Repair]			= const.Novice
	Game.Classes.Skills[const.Class.WarriorMage]	[const.Skills.Repair]			= const.Novice
	Game.Classes.Skills[const.Class.MasterArcher]	[const.Skills.Repair]			= const.Novice
	Game.Classes.Skills[const.Class.Sniper]			[const.Skills.Repair]			= const.Novice
	Game.Classes.Skills[const.Class.Archer]			[const.Skills.IdentifyMonster]	= const.Novice
	Game.Classes.Skills[const.Class.WarriorMage]	[const.Skills.IdentifyMonster]	= const.Novice
	Game.Classes.Skills[const.Class.MasterArcher]	[const.Skills.IdentifyMonster]	= const.Novice
	Game.Classes.Skills[const.Class.Sniper]			[const.Skills.IdentifyMonster]	= const.Novice
	Game.Classes.Skills[const.Class.Archer]			[const.Skills.Perception]		= const.Master
	Game.Classes.Skills[const.Class.WarriorMage]	[const.Skills.Perception]		= const.Master
	Game.Classes.Skills[const.Class.MasterArcher]	[const.Skills.Perception]		= const.Master
	Game.Classes.Skills[const.Class.Sniper]			[const.Skills.Perception]		= const.Master
	Game.Classes.Skills[const.Class.Archer]			[const.Skills.DisarmTraps]		= const.Novice
	Game.Classes.Skills[const.Class.WarriorMage]	[const.Skills.DisarmTraps]		= const.Novice
	Game.Classes.Skills[const.Class.MasterArcher]	[const.Skills.DisarmTraps]		= const.Novice
	Game.Classes.Skills[const.Class.Sniper]			[const.Skills.DisarmTraps]		= const.Novice
	Game.Classes.Skills[const.Class.Archer]			[const.Skills.Stealing]			= const.Novice
	Game.Classes.Skills[const.Class.WarriorMage]	[const.Skills.Stealing]			= const.Novice
	Game.Classes.Skills[const.Class.MasterArcher]	[const.Skills.Stealing]			= const.Novice
	Game.Classes.Skills[const.Class.Sniper]			[const.Skills.Stealing]			= const.Novice
	Game.Classes.Skills[const.Class.Archer]			[const.Skills.Alchemy]			= const.Novice
	Game.Classes.Skills[const.Class.WarriorMage]	[const.Skills.Alchemy]			= const.Novice
	Game.Classes.Skills[const.Class.MasterArcher]	[const.Skills.Alchemy]			= const.Novice
	Game.Classes.Skills[const.Class.Sniper]			[const.Skills.Alchemy]			= const.Novice
	Game.Classes.Skills[const.Class.Archer]			[const.Skills.Learning]			= const.Expert
	Game.Classes.Skills[const.Class.WarriorMage]	[const.Skills.Learning]			= const.Expert
	Game.Classes.Skills[const.Class.MasterArcher]	[const.Skills.Learning]			= const.Expert
	Game.Classes.Skills[const.Class.Sniper]			[const.Skills.Learning]			= const.Expert
	
	Game.Classes.Skills[const.Class.Ranger]			[const.Skills.Unarmed]			= const.Expert
	Game.Classes.Skills[const.Class.Hunter]			[const.Skills.Unarmed]			= const.Expert
	Game.Classes.Skills[const.Class.RangerLord]		[const.Skills.Unarmed]			= const.Expert
	Game.Classes.Skills[const.Class.BountyHunter]	[const.Skills.Unarmed]			= const.Expert
	Game.Classes.Skills[const.Class.Ranger]			[const.Skills.Shield]			= const.Expert
	Game.Classes.Skills[const.Class.Hunter]			[const.Skills.Shield]			= const.Expert
	Game.Classes.Skills[const.Class.RangerLord]		[const.Skills.Shield]			= const.Expert
	Game.Classes.Skills[const.Class.BountyHunter]	[const.Skills.Shield]			= const.Expert
	Game.Classes.Skills[const.Class.Ranger]			[const.Skills.Water]			= const.Novice
	Game.Classes.Skills[const.Class.Hunter]			[const.Skills.Water]			= const.Expert
	Game.Classes.Skills[const.Class.RangerLord]		[const.Skills.Water]			= const.Master
	Game.Classes.Skills[const.Class.BountyHunter]	[const.Skills.Water]			= const.Master
	Game.Classes.Skills[const.Class.Ranger]			[const.Skills.Earth]			= const.Novice
	Game.Classes.Skills[const.Class.Hunter]			[const.Skills.Earth]			= const.Expert
	Game.Classes.Skills[const.Class.RangerLord]		[const.Skills.Earth]			= const.Master
	Game.Classes.Skills[const.Class.BountyHunter]	[const.Skills.Earth]			= const.Master
	Game.Classes.Skills[const.Class.Ranger]			[const.Skills.Mind]				= const.Novice
	Game.Classes.Skills[const.Class.Hunter]			[const.Skills.Mind]				= const.Expert
	Game.Classes.Skills[const.Class.RangerLord]		[const.Skills.Mind]				= const.Master
	Game.Classes.Skills[const.Class.BountyHunter]	[const.Skills.Mind]				= const.Master
	Game.Classes.Skills[const.Class.Ranger]			[const.Skills.Light]			= 0
	Game.Classes.Skills[const.Class.Hunter]			[const.Skills.Light]			= 0
	Game.Classes.Skills[const.Class.RangerLord]		[const.Skills.Light]			= const.Novice
	Game.Classes.Skills[const.Class.BountyHunter]	[const.Skills.Light]			= 0
	Game.Classes.Skills[const.Class.Ranger]			[const.Skills.Dark]				= 0
	Game.Classes.Skills[const.Class.Hunter]			[const.Skills.Dark]				= 0
	Game.Classes.Skills[const.Class.RangerLord]		[const.Skills.Dark]				= 0
	Game.Classes.Skills[const.Class.BountyHunter]	[const.Skills.Dark]				= const.Novice
	Game.Classes.Skills[const.Class.Ranger]			[const.Skills.Perception]		= const.Master
	Game.Classes.Skills[const.Class.Hunter]			[const.Skills.Perception]		= const.Master
	Game.Classes.Skills[const.Class.RangerLord]		[const.Skills.Perception]		= const.GM
	Game.Classes.Skills[const.Class.BountyHunter]	[const.Skills.Perception]		= const.GM
	Game.Classes.Skills[const.Class.Ranger]			[const.Skills.Stealing]			= const.Expert
	Game.Classes.Skills[const.Class.Hunter]			[const.Skills.Stealing]			= const.Expert
	Game.Classes.Skills[const.Class.RangerLord]		[const.Skills.Stealing]			= const.Master
	Game.Classes.Skills[const.Class.BountyHunter]	[const.Skills.Stealing]			= const.Master
	Game.Classes.Skills[const.Class.Ranger]			[const.Skills.Alchemy]			= const.Expert
	Game.Classes.Skills[const.Class.Hunter]			[const.Skills.Alchemy]			= const.Expert
	Game.Classes.Skills[const.Class.RangerLord]		[const.Skills.Alchemy]			= const.Expert
	Game.Classes.Skills[const.Class.BountyHunter]	[const.Skills.Alchemy]			= const.Expert
	
	Game.Classes.Skills[const.Class.Cleric]			[const.Skills.Shield]			= const.Master
	Game.Classes.Skills[const.Class.Priest]			[const.Skills.Shield]			= const.Master
	Game.Classes.Skills[const.Class.PriestLight]	[const.Skills.Shield]			= const.GM
	Game.Classes.Skills[const.Class.PriestDark]		[const.Skills.Shield]			= const.GM
	Game.Classes.Skills[const.Class.Cleric]			[const.Skills.Light]			= const.Expert
	Game.Classes.Skills[const.Class.Priest]			[const.Skills.Light]			= const.Master
	Game.Classes.Skills[const.Class.PriestLight]	[const.Skills.Light]			= const.GM
	Game.Classes.Skills[const.Class.PriestDark]		[const.Skills.Light]			= const.Master
	Game.Classes.Skills[const.Class.Cleric]			[const.Skills.Dark]				= 0
	Game.Classes.Skills[const.Class.Priest]			[const.Skills.Dark]				= 0
	Game.Classes.Skills[const.Class.PriestLight]	[const.Skills.Dark]				= 0
	Game.Classes.Skills[const.Class.PriestDark]		[const.Skills.Dark]				= const.Expert
	Game.Classes.Skills[const.Class.Cleric]			[const.Skills.Perception]		= const.Novice
	Game.Classes.Skills[const.Class.Priest]			[const.Skills.Perception]		= const.Novice
	Game.Classes.Skills[const.Class.PriestLight]	[const.Skills.Perception]		= const.Novice
	Game.Classes.Skills[const.Class.PriestDark]		[const.Skills.Perception]		= const.Novice
	
	Game.Classes.Skills[const.Class.Sorcerer]		[const.Skills.Dodging]			= const.Novice
	Game.Classes.Skills[const.Class.Wizard]			[const.Skills.Dodging]			= const.Novice
	Game.Classes.Skills[const.Class.ArchMage]		[const.Skills.Dodging]			= const.Novice
	Game.Classes.Skills[const.Class.Lich]			[const.Skills.Dodging]			= const.Novice
	Game.Classes.Skills[const.Class.Sorcerer]		[const.Skills.Light]			= 0
	Game.Classes.Skills[const.Class.Wizard]			[const.Skills.Light]			= 0
	Game.Classes.Skills[const.Class.ArchMage]		[const.Skills.Light]			= const.Expert
	Game.Classes.Skills[const.Class.Lich]			[const.Skills.Light]			= 0
	Game.Classes.Skills[const.Class.Sorcerer]		[const.Skills.Dark]				= const.Expert
	Game.Classes.Skills[const.Class.Wizard]			[const.Skills.Dark]				= const.Master
	Game.Classes.Skills[const.Class.ArchMage]		[const.Skills.Dark]				= const.Master
	Game.Classes.Skills[const.Class.Lich]			[const.Skills.Dark]				= const.GM
	Game.Classes.Skills[const.Class.Sorcerer]		[const.Skills.IdentifyMonster]	= const.Master
	Game.Classes.Skills[const.Class.Wizard]			[const.Skills.IdentifyMonster]	= const.Master
	Game.Classes.Skills[const.Class.ArchMage]		[const.Skills.IdentifyMonster]	= const.Master
	Game.Classes.Skills[const.Class.Lich]			[const.Skills.IdentifyMonster]	= const.Master
	Game.Classes.Skills[const.Class.Sorcerer]		[const.Skills.Perception]		= 0
	Game.Classes.Skills[const.Class.Wizard]			[const.Skills.Perception]		= 0
	Game.Classes.Skills[const.Class.ArchMage]		[const.Skills.Perception]		= 0
	Game.Classes.Skills[const.Class.Lich]			[const.Skills.Perception]		= 0
	Game.Classes.Skills[const.Class.Sorcerer]		[const.Skills.Stealing]			= const.Novice
	Game.Classes.Skills[const.Class.Wizard]			[const.Skills.Stealing]			= const.Novice
	Game.Classes.Skills[const.Class.ArchMage]		[const.Skills.Stealing]			= const.Novice
	Game.Classes.Skills[const.Class.Lich]			[const.Skills.Stealing]			= const.Novice
	
	Game.Classes.Skills[const.Class.Druid]			[const.Skills.Water]			= const.Expert
	Game.Classes.Skills[const.Class.GreatDruid]		[const.Skills.Water]			= const.Master
	Game.Classes.Skills[const.Class.ArchDruid]		[const.Skills.Water]			= const.GM
	Game.Classes.Skills[const.Class.Warlock]		[const.Skills.Water]			= const.GM
	Game.Classes.Skills[const.Class.Druid]			[const.Skills.Earth]			= const.Expert
	Game.Classes.Skills[const.Class.GreatDruid]		[const.Skills.Earth]			= const.Master
	Game.Classes.Skills[const.Class.ArchDruid]		[const.Skills.Earth]			= const.GM
	Game.Classes.Skills[const.Class.Warlock]		[const.Skills.Earth]			= const.GM
	Game.Classes.Skills[const.Class.Druid]			[const.Skills.Mind]				= const.Expert
	Game.Classes.Skills[const.Class.GreatDruid]		[const.Skills.Mind]				= const.Master
	Game.Classes.Skills[const.Class.ArchDruid]		[const.Skills.Mind]				= const.GM
	Game.Classes.Skills[const.Class.Warlock]		[const.Skills.Mind]				= const.GM
	Game.Classes.Skills[const.Class.Druid]			[const.Skills.Body]				= const.Expert
	Game.Classes.Skills[const.Class.GreatDruid]		[const.Skills.Body]				= const.Master
	Game.Classes.Skills[const.Class.ArchDruid]		[const.Skills.Body]				= const.GM
	Game.Classes.Skills[const.Class.Warlock]		[const.Skills.Body]				= const.GM
	Game.Classes.Skills[const.Class.Druid]			[const.Skills.Light]			= 0
	Game.Classes.Skills[const.Class.GreatDruid]		[const.Skills.Light]			= 0
	Game.Classes.Skills[const.Class.ArchDruid]		[const.Skills.Light]			= const.Expert
	Game.Classes.Skills[const.Class.Warlock]		[const.Skills.Light]			= 0
	Game.Classes.Skills[const.Class.Druid]			[const.Skills.Dark]				= 0
	Game.Classes.Skills[const.Class.GreatDruid]		[const.Skills.Dark]				= 0
	Game.Classes.Skills[const.Class.ArchDruid]		[const.Skills.Dark]				= 0
	Game.Classes.Skills[const.Class.Warlock]		[const.Skills.Dark]				= const.Expert
	Game.Classes.Skills[const.Class.Druid]			[const.Skills.IdentifyMonster]	= const.Master
	Game.Classes.Skills[const.Class.GreatDruid]		[const.Skills.IdentifyMonster]	= const.Master
	Game.Classes.Skills[const.Class.ArchDruid]		[const.Skills.IdentifyMonster]	= const.Master
	Game.Classes.Skills[const.Class.Warlock]		[const.Skills.IdentifyMonster]	= const.Master
	Game.Classes.Skills[const.Class.Druid]			[const.Skills.Perception]		= const.Novice
	Game.Classes.Skills[const.Class.GreatDruid]		[const.Skills.Perception]		= const.Novice
	Game.Classes.Skills[const.Class.ArchDruid]		[const.Skills.Perception]		= const.Novice
	Game.Classes.Skills[const.Class.Warlock]		[const.Skills.Perception]		= const.Novice
	Game.Classes.Skills[const.Class.Druid]			[const.Skills.Stealing]			= const.Novice
	Game.Classes.Skills[const.Class.GreatDruid]		[const.Skills.Stealing]			= const.Novice
	Game.Classes.Skills[const.Class.ArchDruid]		[const.Skills.Stealing]			= const.Novice
	Game.Classes.Skills[const.Class.Warlock]		[const.Skills.Stealing]			= const.Novice
	
	-- populate spellPowers
	
	local spellTxtIds = {}
	for spellTxtId = 1, Game.SpellsTxt.high do
		spellTxtIds[Game.SpellsTxt[spellTxtId].Name] = spellTxtId
	end
	
	for name, power in pairs(spellPowersByName) do
		local id = spellTxtIds[name]
		if id ~= nil then
			spellPowers[id] = power
		else
			error("Spell \"" .. name .. "\" does not exist in the game.")
		end
	end
	
	-- monster customization
	
	-- monster statistics
	
	for monsterTxtIndex = 1,Game.MonstersTxt.high do
	
		local monsterTxt = Game.MonstersTxt[monsterTxtIndex]
		
		-- monster level
		
		local monsterLevel = monsterTxt.Level
		monsterLevel = math.floor(math.round(monsterLevel * (1 + (100 - monsterLevel) / 100)) * monsterLevelMultiplier)
		monsterTxt.Level = monsterLevel
		
		-- monster armor class
		
		local monsterArmorClass = monsterTxt.ArmorClass
		monsterArmorClass = math.floor(math.round(monsterArmorClass * (1 + (100 - monsterArmorClass) / 100)) * monsterArmorClassMultiplier)
		monsterTxt.ArmorClass = monsterArmorClass
		
		-- monster damage
		
		monsterTxt.Attack1.DamageDiceCount = math.floor(monsterTxt.Attack1.DamageDiceCount * monsterDamageMultiplier)
		monsterTxt.Attack1.DamageAdd = math.floor(monsterTxt.Attack1.DamageAdd * monsterDamageMultiplier)
		
		monsterTxt.Attack2.DamageDiceCount = math.floor(monsterTxt.Attack2.DamageDiceCount * monsterDamageMultiplier)
		monsterTxt.Attack2.DamageAdd = math.floor(monsterTxt.Attack2.DamageAdd * monsterDamageMultiplier)
		
		local skillLevel, skillMastery = SplitSkill(monsterTxt.SpellSkill)
		monsterTxt.SpellSkill = JoinSkill(math.floor(skillLevel * monsterDamageMultiplier), skillMastery)
		
		-- monster hit points
		
		monsterTxt.FullHitPoints = math.floor(monsterTxt.FullHitPoints * monsterHitPointsMultiplier)
		
		-- monster experience
		
		monsterTxt.Experience = math.floor(monsterTxt.Experience * monsterExperienceMultiplier)
		
		-- monster resistance

		for damageType = const.Damage.Phys, const.Damage.Dark do
			-- reduce former immunity resistance level
			if (monsterTxt.Resistances[damageType] == 200) then
				monsterTxt.Resistances[damageType] = 120
			end
		end
		
		-- increase monster move speed
		
		if string.lower(monsterTxt.Name) ~= "peasant" then
			monsterTxt.MoveSpeed = math.floor(340 + 0.4 * monsterTxt.MoveSpeed)
		end
		
		-- give non flying melee monsters ranged attack equal to half of their melee strength
		
		if monsterTxt.Fly == 0 and monsterTxt.Attack1.Missile == 0 and monsterTxt.Attack2Chance == 0 and monsterTxt.SpellChance == 0 then
			if monsterTxtIndex % 3 == 1 then
				monsterTxt.Attack2Chance = 20
			elseif monsterTxtIndex % 3 == 2 then
				monsterTxt.Attack2Chance = 30
			else
				monsterTxt.Attack2Chance = 40
			end
			monsterTxt.Attack2.Missile = 1
			monsterTxt.Attack2.Type = const.Damage.Phys
			monsterTxt.Attack2.DamageDiceCount = monsterTxt.Attack1.DamageDiceCount
			monsterTxt.Attack2.DamageDiceSides = math.ceil(monsterTxt.Attack1.DamageDiceSides / 2)
			monsterTxt.Attack2.DamageAdd = math.ceil(monsterTxt.Attack1.DamageAdd / 2)
		end
		
	end
	
	-- book values
	
	local regularBookBaseIndex = 400
	for itemTxtIndex = regularBookBaseIndex, regularBookBaseIndex + 77 - 1 do
		local itemTxt = Game.ItemsTxt[itemTxtIndex]
		local bookLevel = math.fmod((itemTxtIndex - regularBookBaseIndex), 11)
		itemTxt.Value = modifiedBookValues[1][bookLevel]
	end

	-- mirror books
	
	local mirrorBookBaseIndex = 477
	for itemTxtIndex = mirrorBookBaseIndex, mirrorBookBaseIndex + 22 - 1 do
		local itemTxt = Game.ItemsTxt[itemTxtIndex]
		local bookLevel = math.fmod((itemTxtIndex - mirrorBookBaseIndex), 11)
		itemTxt.Value = modifiedBookValues[2][bookLevel]
	end
	
	-- skill descriptions
	
	updateSkillDescriptions()
	
	Game.SkillDesNormal[const.Skills.Learning] = string.format("EXP bonus = 9 + %d * level", learningRankMultipliers[const.Novice])
	Game.SkillDesExpert[const.Skills.Learning] = string.format("EXP bonus = 9 + %d * level", learningRankMultipliers[const.Expert])
	Game.SkillDesMaster[const.Skills.Learning] = string.format("EXP bonus = 9 + %d * level", learningRankMultipliers[const.Master])
	Game.SkillDesGM[const.Skills.Learning] = string.format("EXP bonus = 9 + %d * level", learningRankMultipliers[const.GM])
	
--[=[
	----------------------------------------------------------------------------------------------------
	-- spell descriptions
	----------------------------------------------------------------------------------------------------
	
	-- protections

	Game.SpellsTxt[3].Description = "Increases all your characters' resistance to Fire. Lasts one hour per point of skill in Fire Magic."
	Game.SpellsTxt[3].Normal = string.format("resistance = %d * level", (const.Novice + protectionSpellExtraMultiplier))
	Game.SpellsTxt[3].Expert = string.format("resistance = %d * level", (const.Expert + protectionSpellExtraMultiplier))
	Game.SpellsTxt[3].Master = string.format("resistance = %d * level", (const.Master + protectionSpellExtraMultiplier))
	
	Game.SpellsTxt[14].Description = "Increases all your characters' resistance to Electricity. Lasts one hour per point of skill in Air Magic."
	Game.SpellsTxt[14].Normal = string.format("resistance = %d * level", (const.Novice + protectionSpellExtraMultiplier))
	Game.SpellsTxt[14].Expert = string.format("resistance = %d * level", (const.Expert + protectionSpellExtraMultiplier))
	Game.SpellsTxt[14].Master = string.format("resistance = %d * level", (const.Master + protectionSpellExtraMultiplier))
	
	Game.SpellsTxt[25].Description = "Increases all your characters' resistance to Cold. Lasts one hour per point of skill in Water Magic."
	Game.SpellsTxt[25].Normal = string.format("resistance = %d * level", (const.Novice + protectionSpellExtraMultiplier))
	Game.SpellsTxt[25].Expert = string.format("resistance = %d * level", (const.Expert + protectionSpellExtraMultiplier))
	Game.SpellsTxt[25].Master = string.format("resistance = %d * level", (const.Master + protectionSpellExtraMultiplier))
	
	Game.SpellsTxt[36].Description = "Increases all your characters' resistance to Magic. Lasts one hour per point of skill in Earth Magic."
	Game.SpellsTxt[36].Normal = string.format("resistance = %d * level", (const.Novice + protectionSpellExtraMultiplier))
	Game.SpellsTxt[36].Expert = string.format("resistance = %d * level", (const.Expert + protectionSpellExtraMultiplier))
	Game.SpellsTxt[36].Master = string.format("resistance = %d * level", (const.Master + protectionSpellExtraMultiplier))
	
	Game.SpellsTxt[69].Description = "Increases all your characters' resistance to Poison. Lasts one hour per point of skill in Body Magic."
	Game.SpellsTxt[69].Normal = string.format("resistance = %d * level", (const.Novice + protectionSpellExtraMultiplier))
	Game.SpellsTxt[69].Expert = string.format("resistance = %d * level", (const.Expert + protectionSpellExtraMultiplier))
	Game.SpellsTxt[69].Master = string.format("resistance = %d * level", (const.Master + protectionSpellExtraMultiplier))
	
	-- stats buffs
	
	-- Lucky day
	Game.SpellsTxt[48].Description = string.format("Temporarily increases all party characters' Luck statistic by 10 points plus %d per point of skill in Spirit Magic.", spellStatsBuffPowers["StatsBuff"]["proportional"])
	Game.SpellsTxt[48].Normal = "same"
	Game.SpellsTxt[48].Expert = "same"
	Game.SpellsTxt[48].Master = "same"
	
	-- Meditation
	Game.SpellsTxt[56].Description = string.format("Temporarily increases all party characters' Intellect and Personality statistics by 10 points plus %d per point of skill in Mind Magic.", spellStatsBuffPowers["StatsBuff"]["proportional"])
	Game.SpellsTxt[56].Normal = "same"
	Game.SpellsTxt[56].Expert = "same"
	Game.SpellsTxt[56].Master = "same"
	
	-- Precision
	Game.SpellsTxt[59].Description = string.format("Temporarily increases all party characters' Accuracy statistic by 10 points plus %d per point of skill in Mind Magic.", spellStatsBuffPowers["StatsBuff"]["proportional"])
	Game.SpellsTxt[59].Normal = "same"
	Game.SpellsTxt[59].Expert = "same"
	Game.SpellsTxt[59].Master = "same"
	
	-- Speed
	Game.SpellsTxt[73].Description = string.format("Temporarily increases all party characters' Speed statistic by 10 points plus %d per point of skill in Body Magic.", spellStatsBuffPowers["StatsBuff"]["proportional"])
	Game.SpellsTxt[73].Normal = "same"
	Game.SpellsTxt[73].Expert = "same"
	Game.SpellsTxt[73].Master = "same"
	
	-- Power day
	Game.SpellsTxt[75].Description = string.format("Temporarily increases all party characters' Might and Endurance by 10 points plus %d per point of skill in Body Magic.", spellStatsBuffPowers["StatsBuff"]["proportional"])
	Game.SpellsTxt[75].Normal = "same"
	Game.SpellsTxt[75].Expert = "same"
	Game.SpellsTxt[75].Master = "same"
	
	-- direct buffs
	
	-- Stone Skin
	Game.SpellsTxt[38].Description = string.format("Increases the armor class of a character by %d + %d point per point of skill in Earth Magic.", spellBuffPowers["StoneSkin"]["fixed"], spellBuffPowers["StoneSkin"]["proportional"])
	
	-- Bless
	Game.SpellsTxt[46].Description = string.format("Increases the attack/shoot of a character by %d + %d per point of skill in Spirit Magic.", spellBuffPowers["Bless"]["fixed"], spellBuffPowers["Bless"]["proportional"])
	
	-- Heroism
	Game.SpellsTxt[51].Description = string.format("Increases the damage a character does on a successful attack by %d + %d point per point of skill in Spirit Magic.", spellBuffPowers["Heroism"]["fixed"], spellBuffPowers["Heroism"]["proportional"])
	
	-- healing spells
	
	-- Healing Touch
	Game.SpellsTxt[47].Description = string.format("Cheaply heals a single character. Skill increases the recovery rate of this spell.")
	Game.SpellsTxt[47].Normal = string.format("Heals 3-7 points of damage")
	Game.SpellsTxt[47].Expert = string.format("Heals 6-14 points of damage")
	Game.SpellsTxt[47].Master = string.format("Heals 15-35 points of damage")

	-- First Aid
	Game.SpellsTxt[68].Description = string.format("Cures single character. Recovery is reduced by an amount equal to the caster's skill in Body Magic.")
	Game.SpellsTxt[68].Normal = string.format("Cures 5 hit points")
	Game.SpellsTxt[68].Expert = string.format("Cures 10 hit points")
	Game.SpellsTxt[68].Master = string.format("Cures 25 hit points")

	-- Cure Wounds
	Game.SpellsTxt[71].Description = string.format("Cures hit points on a single target when cast. The number cured is equal to 5 per point of skill in Body Magic.")

	-- Power Cure
	Game.SpellsTxt[77].Description = string.format("Cures hit points of all characters in your party at once. The number cured is equal to 5 per point of skill in Body Magic.")

	-- direct damage spells
	
	for spellIndex, spellPower in pairs(spellPowers) do
		Game.SpellsTxt[spellIndex].Description = Game.SpellsTxt[spellIndex].Description .. string.format("\n\nmodified damage = %d + %d-%d per point of skill", spellPowers[spellIndex][const.Novice].fixedMin, spellPowers[spellIndex][const.Novice].variableMin, spellPowers[spellIndex][const.Novice].variableMax)
	end
	
	-- guardian angel
	
	Game.SpellsTxt[ spellTxtIds["Guardian Angel"] ].Description = string.replace(Game.SpellsTxt[ spellTxtIds["Guardian Angel"] ].Description, "Guardian Angel lasts for 1 hour per point of skill in Spirit Magic", "Guardian Angel lasts for 1 hour plus 5 minutes per point of skill in Spirit Magic") .. string.format("\n\nWhile active Guardian Angel lowers death HP threshold by 1000 for all characters protecting them from dying of HP loss.")
--]=]
	
	-- professions
	
	for professionIndex, cost in pairs(hirelingCosts) do
		local professionTxt = Game.NPCProfTxt[professionIndex]
		professionTxt.JoinText = professionTxt.JoinText:gsub(professionTxt.Cost, cost)
		professionTxt.Cost = cost
	end
	
	-- shorten skill names
	
	Game.SkillNames[const.Skills.IdentifyItem] = "ID Item"
	Game.SkillNames[const.Skills.IdentifyMonster] = "ID Monster"
	Game.SkillNames[const.Skills.Bodybuilding] = "Bodybuilding"
	
	-- lock strength
	-- trap strength
	
	for mapStatItemIndex = 0, Game.MapStats.high do
		local mapStatItem = Game.MapStats[mapStatItemIndex]
		mapStatItem.Lock = math.floor(mapStatItem.Lock * 1.5)
		mapStatItem.Trap = mapStatItem.Trap * 5
	end
	
end

----------------------------------------------------------------------------------------------------
-- map load
----------------------------------------------------------------------------------------------------

function events.LoadMap()

	-- monster statistics
	
	for monsterIndex = 1, Map.Monsters.high do
	
		local monster = Map.Monsters[monsterIndex]
		local monsterTxt = Game.MonstersTxt[monster.Id]
		
		-- monster level
		
		monster.Level = monsterTxt.Level
		
		-- monster armor class
		
		monster.ArmorClass = monsterTxt.ArmorClass
		
		-- monster damage
		
		monster.Attack1.DamageDiceCount = monsterTxt.Attack1.DamageDiceCount
		monster.Attack1.DamageAdd = monsterTxt.Attack1.DamageAdd
		
		monster.Attack2.DamageDiceCount = monsterTxt.Attack2.DamageDiceCount
		monster.Attack2.DamageAdd = monsterTxt.Attack2.DamageAdd
		
		monster.SpellSkill = monsterTxt.SpellSkill
		
		-- monster hit points
		
		monster.FullHitPoints = monsterTxt.FullHitPoints
		
		-- monster experience
		
		monster.Experience = monsterTxt.Experience
		
		-- monster resistance

		for damageType = const.Damage.Phys, const.Damage.Dark do
			monster.Resistances[damageType] = monsterTxt.Resistances[damageType]
		end
		
		-- increase monster move speed
		
		monster.MoveSpeed = monsterTxt.MoveSpeed
		
	end
	
end

----------------------------------------------------------------------------------------------------
-- modifications
----------------------------------------------------------------------------------------------------

-- navigate missile

local function navigateMissile(object)

	-- exclude Harmondale fort fireball

	if object.Owner == 8002 then return end
	
	-- exclude some special non targeting spells
	if
		-- Fire Blast
		object.SpellType == 8
		or
		-- Meteor Shower
		object.SpellType == 9
		or
		-- Sparks
		object.SpellType == 15
		or
		-- Starburst
		object.SpellType == 22
		or
		-- Poison Spray
		object.SpellType == 26
		or
		-- Shrapmetal
		object.SpellType == 92
	then
		return
	end
	
	-- object parameters
	local ownerKind = bit.band(object.Owner, 7)
	local targetKind = bit.band(object.Target, 7)
	local targetIndex = bit.rshift(object.Target, 3)
	
	if targetIndex > Map.Monsters.high then
		return
	end
	
	-- current position
	local currentPosition = {["X"] = object.X, ["Y"] = object.Y, ["Z"] = object.Z, }
	
	-- process only missiles between party and monster
	-- target position
	local targetPosition
	if ownerKind == const.ObjectRefKind.Party and targetKind == const.ObjectRefKind.Monster then
		local mapMonster = Map.Monsters[targetIndex]
		-- target only alive monster
		if mapMonster.HitPoints > 0 then
			targetPosition = {["X"] = mapMonster.X, ["Y"] = mapMonster.Y, ["Z"] = mapMonster.Z + mapMonster.BodyHeight * 0.75, }
		else
			return
		end
	-- assume all objects not owned by party and without target are targetting party
	elseif ownerKind ~= const.ObjectRefKind.Party and targetKind == const.ObjectRefKind.Nothing  then
		targetPosition = {["X"] = Party.X, ["Y"] = Party.Y, ["Z"] = Party.Z + 120, }
	else
		-- ignore other missiles targetting
		return
	end
	
	-- speed
	local speed = math.sqrt(object.VelocityX * object.VelocityX + object.VelocityY * object.VelocityY + object.VelocityZ * object.VelocityZ)
	
	-- process only objects with non zero speed
	if speed == 0 then
		return
	end
	
	-- direction
	local direction = {["X"] = targetPosition.X - currentPosition.X, ["Y"] = targetPosition.Y - currentPosition.Y, ["Z"] = targetPosition.Z - currentPosition.Z, }
	-- directionLength
	local directionLength = math.sqrt(direction.X * direction.X + direction.Y * direction.Y + direction.Z * direction.Z)
	
	-- normalization koefficient
	local koefficient = speed / directionLength
	
	-- new velocity
	local newVelocity = {["X"] = koefficient * direction.X, ["Y"] = koefficient * direction.Y, ["Z"] = koefficient * direction.Z, }
	
	-- set new velocity
	object.VelocityX = newVelocity.X
	object.VelocityY = newVelocity.Y
	object.VelocityZ = newVelocity.Z
	
end

-- game tick

playerHitPoints = {}
function events.Tick()

	-- navigate missiles
	
	for objectIndex = 1, Map.Objects.high do
		local object =  Map.Objects[objectIndex]
		navigateMissile(object)
	end
	
	-- reset engaged monsters
	
	if not Party.EnemyDetectorRed and not Party.EnemyDetectorYellow then
		table.clear(engagedMonsterIndexes)
	end
	
end

-- statistics effect

function events.GetStatisticEffect(t)
	t.Result = math.floor(t.Value / 5)
end

-- calculate player hit or miss

local attackingPlayer = nil
local meleeHitPlayer = nil
local function playerCalcHitOrMiss(d, def, playerPointer, monsterPointer, range, bonus)

	local playerIndex, player = GetPlayer(playerPointer)
	local monsterIndex, monster = GetMonster(monsterPointer)
	
	-- monster AC
	
	local monsterArmorClass = GetMonsterArmorClass(monster)
	
	-- player attack
	
	local playerAttackBase
	
	if range == 0 then
		playerAttackBase = player:GetMeleeAttack()
	else
		playerAttackBase = player:GetRangedAttack()
	end
	
	-- range penalty
	
	local playerAttackPenalty
	
	if range == 0 or range == 1 then
		playerAttackPenalty = 0
	elseif range == 2 then
		playerAttackPenalty = monsterArmorClass / 2
	elseif range == 3 then
		playerAttackPenalty = monsterArmorClass + 15
	end
	
	local playerAttack = playerAttackBase - playerAttackPenalty
	
	-- compute probability
	
	local probability = 1 / (1 + 3 ^ (1 - (playerAttack - monsterArmorClass) / 25))
	
	-- compute hit
	
	local hit
	
	if math.random() < probability then
		hit = 1
	else
		hit = 0
	end
	
	meleeHitPlayer = (range == 0 and hit == 1) and player or nil
	
	return hit
	
	--[=[
	-- original function
	
	return def(player, monster, range, bonus)
	--]=]
	
end
mem.hookfunction(0x4272AC, 0, 4, playerCalcHitOrMiss)

-- calculate monster hit or miss

local function monsterCalcHitOrMiss(d, def, monsterPointer, playerPointer)

	local monsterIndex, monster = GetMonster(monsterPointer)
	local playerIndex, player = GetPlayer(playerPointer)
	
	-- monster attack
	
	local monsterAttack = math.floor(GetMonsterAttack(monster) * monsterAttackMultiplier)
	
	-- player armor class
	
	local playerArmorClass = player:GetArmorClass()
	
	-- compute probability
	
	local probability = 1 / (1 + 3 ^ (- (monsterAttack - playerArmorClass - 25) / 25))
	
	-- compute hit
	
	local hit
	
	if math.random() < probability then
		hit = 1
	else
		hit = 0
	end
	
	return hit
	
end
mem.hookfunction(0x427464, 0, 2, monsterCalcHitOrMiss)

-- main damage monster from party

local function firstCalcDamageToMonster(d, def, monsterPointer, damageKind, damage)

	local monsterIndex, monster = GetMonster(monsterPointer)
	
	-- compute damage
	
	local result = def(monsterPointer, damageKind, damage)
	
	-- special weapon effects
	
	if meleeHitPlayer ~= nil then
		local extraHarm = applySpecialWeaponEffect(meleeHitPlayer, monster)
		if extraHarm > 0 then
			result = result + extraHarm
		end
	end
	
	return result
	
end
mem.hookcall(0x004398CC, 0, 3, firstCalcDamageToMonster)

-- correct attack delay

function events.GetAttackDelay(t)

	-- weapon
	
	if t.Ranged then
	
		local ranged = getRangedInfo(t.Player)
		
		t.Result = t.Result + getRangedRecoveryCorrection(ranged)
		
	else
	
		local melee = getMeleeInfo(t.Player)
		
		t.Result = t.Result + getMeleeRecoveryCorrection(melee)
		
	end
	
	-- turn recovery time into a multiplier rather than divisor
	
	local recoveryBonus = 100 - t.Result
	local correctedRecoveryTime = math.floor(100 / (1 + recoveryBonus / 100))
	
	t.Result = correctedRecoveryTime
	
	-- cap melee recovery
	
	if not t.Ranged then
		t.Result = math.max(Game.MinMeleeRecoveryTime, t.Result)
	end
	
end

-- calculate stat bonus by item

function events.CalcStatBonusByItems(t)

	-- elemental resistance bonus from armor
	
	if t.Stat >= const.Stats.FireResistance and t.Stat <= const.Stats.EarthResistance then
	
		local defense = getDefenseInfo(t.Player)
		
		if defense.armor.equipped then
		
			t.Result = t.Result - oldArmorSkillResistanceBonuses[defense.armor.skill][defense.armor.rank] * defense.armor.level
			t.Result = t.Result + newArmorSkillResistanceBonuses[defense.armor.skill][defense.armor.rank] * defense.armor.level
			
		end
		
	end
	
end

-- calculate stat bonus by skill

function events.CalcStatBonusBySkills(t)

	-- ranged attack
	
	if t.Stat == const.Stats.RangedAttack then
	
		local ranged = getRangedInfo(t.Player)
		
		if ranged.equipped then
		
			-- weapon
			
			local oldBonus = oldWeaponSkillAttackBonuses[ranged.skill][ranged.rank] * ranged.level
			local newBonus = newWeaponSkillAttackBonuses[ranged.skill][ranged.rank] * ranged.level
			
			t.Result = t.Result - oldBonus + newBonus
			
		end
		
	-- ranged damage
	
	elseif t.Stat == const.Stats.RangedDamageBase then
	
		local ranged = getRangedInfo(t.Player)
		
		if ranged.equipped then
		
			-- weapon
			
			local oldBonus = 0
			local newBonus = newWeaponSkillDamageBonuses[ranged.skill][ranged.rank] * ranged.level
			
			t.Result = t.Result - oldBonus + newBonus
			
		end
		
		-- identify monster effect
		
		local identifyMonsterLevel, identifyMonsterRank = SplitSkill(Party.PlayersArray[0]:GetSkill(const.Skills.IdentifyMonster))
		
		if identifyMonsterLevel > 0 then
			local identifyMonsterEffect = 10 + skillEffectRankMultipliers[identifyMonsterRank] * identifyMonsterLevel
			local identifyMonsterDamageBonus = math.floor(identifyMonsterDamageBonusMultiplier * identifyMonsterEffect)
			t.Result = t.Result + identifyMonsterDamageBonus
		end
		
	-- melee attack
	
	elseif t.Stat == const.Stats.MeleeAttack then
	
		local melee = getMeleeInfo(t.Player)
		
		-- weapon
		
		if melee.equipped then
			
			-- single wield
			
			if not melee.dualWield then
				
				local oldBonus = oldWeaponSkillAttackBonuses[melee.main.skill][melee.main.rank] * melee.main.level
				local newBonus = newWeaponSkillAttackBonuses[melee.main.skill][melee.main.rank] * melee.main.level
				
				t.Result = t.Result - oldBonus + newBonus
				
			-- dual wield
			
			else
						
				local oldBonus = oldWeaponSkillAttackBonuses[melee.extra.skill][melee.extra.rank] * melee.extra.level
				local newBonus =
					newWeaponSkillAttackBonuses[melee.main.skill][melee.main.rank] * melee.main.level
					+
					newWeaponSkillAttackBonuses[melee.extra.skill][melee.extra.rank] * melee.extra.level
			
				t.Result = t.Result - oldBonus + newBonus
				
			end
			
		end
		
		-- unarmed
		
		if melee.unarmed.applied then
			
			local oldBonus = oldWeaponSkillAttackBonuses[const.Skills.Unarmed][melee.unarmed.rank] * melee.unarmed.level
			local newBonus = newWeaponSkillAttackBonuses[const.Skills.Unarmed][melee.unarmed.rank] * melee.unarmed.level
			
			t.Result = t.Result - oldBonus + newBonus
			
		elseif melee.unarmed.level > 0 then
		
			-- unarmed adds part of it bonus when not applied
			
			local oldBonus = 0
			local newBonus = math.floor(newWeaponSkillAttackBonuses[const.Skills.Unarmed][melee.unarmed.rank] * melee.unarmed.level * unarmedPartialEffect / 100)
			
			t.Result = t.Result - oldBonus + newBonus
			
		end
		
		-- armsmaster
		
		if (melee.equipped or melee.unarmed.applied) and melee.armsmaster.applied then
		
			local oldBonus = oldArmsmasterSkillAttackBonuses[melee.armsmaster.rank] * melee.armsmaster.level
			local newBonus = newArmsmasterSkillAttackBonuses[melee.armsmaster.rank] * melee.armsmaster.level
			
			t.Result = t.Result - oldBonus + newBonus
			
		end
		
	-- melee damage
	
	elseif t.Stat == const.Stats.MeleeDamageBase then
	
		local melee = getMeleeInfo(t.Player)
		
		-- weapon
		
		if melee.equipped then
			
			-- single wield
			
			if not melee.dualWield then
				
				local oldBonus = oldWeaponSkillDamageBonuses[melee.main.skill][melee.main.rank] * melee.main.level
				local newBonus = newWeaponSkillDamageBonuses[melee.main.skill][melee.main.rank] * melee.main.level
				
				-- two handed weapon bonus
				
				if melee.twoHanded and melee.main.skill ~= const.Skills.Staff then
					t.Result = t.Result + twoHandedWeaponDamageBonus * melee.main.level
				end
				
				t.Result = t.Result - oldBonus + newBonus
				
			-- dual wield
			
			else
				
				local oldBonus = oldWeaponSkillDamageBonuses[melee.extra.skill][melee.extra.rank] * melee.extra.level
				local newBonus = 
					newWeaponSkillDamageBonuses[melee.main.skill][melee.main.rank] * melee.main.level
					+
					newWeaponSkillDamageBonuses[melee.extra.skill][melee.extra.rank] * melee.extra.level
				
				t.Result = t.Result - oldBonus + newBonus
				
			end
			
		end
		
		-- unarmed
		
		if melee.unarmed.applied then
			
			local oldBonus = oldWeaponSkillDamageBonuses[const.Skills.Unarmed][melee.unarmed.rank] * melee.unarmed.level
			local newBonus = oldWeaponSkillDamageBonuses[const.Skills.Unarmed][melee.unarmed.rank] * melee.unarmed.level
			
			-- bug: armsmaster does not add damage when barehands
			
			if not melee.unarmed.staff then
				oldBonus = 0
			end
			
			t.Result = t.Result - oldBonus + newBonus
				
		elseif melee.unarmed.level > 0 then
		
			-- unarmed adds part of it bonus when not applied
			
			local oldBonus = 0
			local newBonus = math.floor(newWeaponSkillDamageBonuses[const.Skills.Unarmed][melee.unarmed.rank] * melee.unarmed.level * unarmedPartialEffect / 100)
			
			t.Result = t.Result - oldBonus + newBonus
			
		end
		
		-- armsmaster
		
		if (melee.equipped or melee.unarmed.applied) and melee.armsmaster.applied then
		
			local oldBonus = oldArmsmasterSkillDamageBonuses[melee.armsmaster.rank] * melee.armsmaster.level
			local newBonus = newArmsmasterSkillDamageBonuses[melee.armsmaster.rank] * melee.armsmaster.level
			
			t.Result = t.Result - oldBonus + newBonus
			
		end
		
		-- identify monster effect
		
		local identifyMonsterLevel, identifyMonsterRank = SplitSkill(Party.PlayersArray[0]:GetSkill(const.Skills.IdentifyMonster))
		
		if identifyMonsterLevel > 0 then
			local identifyMonsterEffect = skillEffectRankMultipliers[identifyMonsterRank] * identifyMonsterLevel
			local identifyMonsterDamageBonus = math.floor(identifyMonsterDamageBonusMultiplier * identifyMonsterEffect)
			t.Result = t.Result + identifyMonsterDamageBonus
		end
		
	-- armor class
	
	elseif t.Stat == const.Stats.ArmorClass then
	
		-- melee
		
		local melee = getMeleeInfo(t.Player)
		
		if melee.equipped then

			local oldBonus = oldWeaponSkillACBonuses[melee.main.skill][melee.main.rank] * melee.main.level
			local newBonus = newWeaponSkillACBonuses[melee.main.skill][melee.main.rank] * melee.main.level
			
			t.Result = t.Result - oldBonus + newBonus
			
		end
		
		-- defense
		
		local defense = getDefenseInfo(t.Player)
		
		-- shield
		
		if defense.shield.equipped then
		
			local oldBonus = oldArmorSkillACBonuses[defense.shield.skill][defense.shield.rank] * defense.shield.level
			local newBonus = newArmorSkillACBonuses[defense.shield.skill][defense.shield.rank] * defense.shield.level
			
			t.Result = t.Result - oldBonus + newBonus
			
		end
		
		-- armor
		
		if defense.armor.equipped then
		
			local oldBonus = olddefense.armorSkillACBonuses[defense.armor.skill][defense.armor.rank] * defense.armor.level
			local newBonus = newdefense.armorSkillACBonuses[defense.armor.skill][defense.armor.rank] * defense.armor.level
			
			t.Result = t.Result - oldBonus + newBonus
			
		end
		
		-- dodging
		
		if defense.dodging.applied then
		
			local oldBonus = oldArmorSkillACBonuses[const.Skills.Dodging][defense.dodging.rank] * defense.dodging.level
			local newBonus = newArmorSkillACBonuses[const.Skills.Dodging][defense.dodging.rank] * defense.dodging.level
			
			t.Result = t.Result - oldBonus + newBonus
			
		elseif defense.dodging.level > 0 then
		
			-- dodging adds part of it bonus when not applied
			
			local oldBonus = 0
			local newBonus = math.floor(newArmorSkillACBonuses[const.Skills.Dodging][defense.dodging.rank] * defense.dodging.level * dodgingPartialEffect)
			
			t.Result = t.Result - oldBonus + newBonus
			
		end
		
	end
	
end

-- spell damage modification

function events.CalcSpellDamage(t)

	local spellPower = spellPowers[t.Spell]
	
	if spellPower ~= nil then
		t.Result = randomSpellPower(spellPower, t.Skill)
	end
	
end

-- stealing increases received gold

local function AddGold(d, def, value, kind)
	if kind == 0 then
		local stealingLevel, stealingRank = SplitSkill(Party.PlayersArray[0]:GetSkill(const.Skills.Stealing))
		if stealingLevel > 0 then
			local stealingEffect = skillEffectRankMultipliers[stealingRank] * stealingLevel
			value = value + stealingEffect
		end
	end
	def(value, kind)
end
mem.hookfunction(0x00420BAE, 2, 0, AddGold)

-- summon hirelings

local function bringMonsterToParty(monster)
	monster.X = Party.X
	monster.Y = Party.Y
	monster.Z = Party.Z
end
local function setNPCProfession(npcId, profession)
	Game.StreetNPC[npcId].Profession = profession
end
local function bringHirelingsToParty(professions)
	local partyRoom = Map.RoomFromPoint(Party.X, Party.Y, Party.Z)
	local professionIndex = 1
	for monsterIndex = 1, Map.Monsters.high do
		local monster = Map.Monsters[monsterIndex]
		if
			-- not removed
			monster.AIState ~= const.AIState.Removed
			and
			-- in same room with party
			monster.Room == partyRoom
			and
			-- has street NPC_ID
			monster.NPC_ID >= 5000
		then
			setNPCProfession(monster.NPC_ID - 5000, professions[professionIndex])
			bringMonsterToParty(monster)
			professionIndex = professionIndex + 1
			if professionIndex > #professions then
				break
			end
		end
	end
end
function events.KeyDown(t)
	-- Hirelings
	if t.Alt then
	
		local handled = true
		
		-- buffs
		if		t.Key == const.Keys.B then
			bringHirelingsToParty({const.NPCProfession.Chaplain, const.NPCProfession.Piper, })
		-- combat skills
		elseif	t.Key == const.Keys.C then
			bringHirelingsToParty({const.NPCProfession.WeaponsMaster, const.NPCProfession.ArmsMaster, const.NPCProfession.Squire, })
		-- elemental skills
		elseif	t.Key == const.Keys.E then
			bringHirelingsToParty({const.NPCProfession.SpellMaster, const.NPCProfession.Mystic, const.NPCProfession.Apprentice, })
		-- self skills
		elseif	t.Key == const.Keys.S then
			bringHirelingsToParty({const.NPCProfession.Prelate, const.NPCProfession.Initiate, const.NPCProfession.Acolyte, })
		-- resistances
		elseif	t.Key == const.Keys.R then
			bringHirelingsToParty({const.NPCProfession.Enchanter, })
		-- learning
		elseif	t.Key == const.Keys.L then
			bringHirelingsToParty({const.NPCProfession.Instructor, const.NPCProfession.Teacher, })
		-- money
		elseif	t.Key == const.Keys.M then
			bringHirelingsToParty({const.NPCProfession.Banker, const.NPCProfession.Factor, })
		-- trading
		elseif	t.Key == const.Keys.T then
			bringHirelingsToParty({const.NPCProfession.Merchant, const.NPCProfession.Trader, })
		-- land travel
		elseif	t.Key == const.Keys["1"] then
			bringHirelingsToParty({const.NPCProfession.Pathfinder, const.NPCProfession.Tracker, const.NPCProfession.Guide, })
		-- horse travel
		elseif	t.Key == const.Keys["2"] then
			bringHirelingsToParty({const.NPCProfession.Horseman, })
		-- sea travel
		elseif	t.Key == const.Keys["3"] then
			bringHirelingsToParty({const.NPCProfession.Navigator, const.NPCProfession.Sailor, })
		-- utilities
		elseif	t.Key == const.Keys.U then
			bringHirelingsToParty({const.NPCProfession.WindMaster, const.NPCProfession.WaterMaster, })
		-- disarm
		elseif	t.Key == const.Keys.D then
			bringHirelingsToParty({const.NPCProfession.Tinker, const.NPCProfession.Locksmith, const.NPCProfession.Burglar, })
		else
			handled = false
		end
		
		if handled then
			t.Key = 0
		end
		
	end
end

-- temple healing price is scaled with party experience level

local function modifiedTempleHealingPrice(d, def, playerPointer, priceMultiplier)

	local playerIndex, player = GetPlayer(playerPointer)
	local priceMultiplierFloat = convertIntToFloat(priceMultiplier)
	
	-- call original function
	
	local result = def(playerPointer, priceMultiplier)
	
	-- get ailment multiplier
	
	local ailmentMultiplier = result / priceMultiplierFloat
	
	-- get party experience level
	
	local partyExperienceLevel = getPartyExperienceLevel()
	
	-- get restored HP and SP
	
	local fullHP = player:GetFullHP()
	local fullSP = player:GetFullSP()
	local restoredHP = math.max(0, fullHP - player.HP)
	local restoredSP = math.max(0, fullSP - player.SP)
	
	-- get healing price
	
	local healingPrice = math.max(0, math.round(partyExperienceLevel * (templeHealingPricePerHP * restoredHP + templeHealingPricePerSP * restoredSP)))
	
	-- get restoration price
	
	local restorationPrice = math.max(0, math.round(partyExperienceLevel * (templeHealingPricePerHP * fullHP + templeHealingPricePerSP * fullSP) * (ailmentMultiplier - 1)))
	
	-- get total price
	
	local totalPrice = healingPrice + restorationPrice
	
	-- return result
	
	return totalPrice
	
end
mem.hookcall(0x004B7039, 1, 1, modifiedTempleHealingPrice)

-- inn room price is scaled with party experience level

local function getInnRoomPrice()

	-- get full healing price
	
	local partyExperienceLevel = getPartyExperienceLevel()
	local fullHealingPrice = 0
	for playerIndex = 0, Party.Players.high do
		local player = Party.Players[playerIndex]
		local fullHP = player:GetFullHP()
		local fullSP = player:GetFullSP()
		fullHealingPrice = fullHealingPrice + math.max(0, math.round(partyExperienceLevel * (templeHealingPricePerHP * fullHP + templeHealingPricePerSP * fullSP)))
	end
	
	-- get inn room price
	
	local innRoomPrice = math.round(fullHealingPrice * innRoomPriceMultiplier)
	
	return innRoomPrice
	
end
local function modifiedInnRoomPrice(d, def)

	-- call original function
	
	local result = def()
	
	-- get inn room price
	
	local innRoomPrice = getInnRoomPrice()
	
	-- return result
	
	return innRoomPrice
	
end
mem.hookcall(0x004B8272, 0, 0, modifiedInnRoomPrice)

-- inn food price is scaled with party experience level and with the food quantity

local function modifiedInnFoodPrice(d, def)

	-- get food quantity
	
	local foodQuantity = convertIntToFloat(mem.i4[d.ebp - 0x20])

	-- call original function
	
	local result = def()
	
	-- get inn room price
	
	local innRoomPrice = getInnRoomPrice()
	
	-- get inn food price
	
	local innFoodPrice = math.round(innRoomPrice * (foodQuantity / 2) * (foodQuantity / innFoodBaseQuantity))
	
	-- return result
	
	return innFoodPrice
	
end
mem.hookcall(0x004B82BB, 0, 0, modifiedInnFoodPrice)

-- plate wearer attracts physical attack

function events.PlayerAttacked(t)

	-- ignore further processing if damage type is not physical
	
	if
		not
		(
			t.Attacker.Spell ~= nil and Game.SpellsTxt[t.Attacker.Spell].DamageType == const.Damage.Phys
			or
			t.Attacker.Monster ~= nil and t.Attacker.MonsterAction == 0 and Map.Monsters[t.Attacker.MonsterIndex].Attack1.Type == const.Damage.Phys
			or
			t.Attacker.Monster ~= nil and t.Attacker.MonsterAction == 1 and Map.Monsters[t.Attacker.MonsterIndex].Attack2.Type == const.Damage.Phys
		)
	then
		return
	end

	-- get target player and equipment data
	
	local targetPlayerIndex, targetPlayer = t.PlayerSlot, t.Player
	local targetPlayerDefenseInfo = getDefenseInfo(targetPlayer)
	
	-- set default substitute player = target player
	
	local substitutePlayerIndex = targetPlayerIndex
	local substitutePlayer = targetPlayer
	
	if
		-- absorb physical damage only
		damageKind == const.Damage.Phys
		and
		-- switch target player only if they do not wear plate themselves
		targetPlayerDefenseInfo.armor.skill ~= const.Skills.Plate
	then
	
		for playerIndex = 0,3 do
		
			if playerIndex ~= targetPlayerIndex then
			
				local player = Party.PlayersArray[playerIndex]
				local playerDefenseInfo = getDefenseInfo(player)
				
				-- switch to substitute player only if they wear plate and alive
				
				if player:IsConscious() and playerDefenseInfo.skill == const.Skills.Plate then
				
					local substituteProbability = plateCoverChances[playerDefenseInfo.rank]
					local roll = math.random()
					if roll < substituteProbability then
						substitutePlayerIndex = playerIndex
						break
					end
					
				end
				
			end
			
		end
		
	end
	
	-- substitute player
	
	if substitutePlayerIndex ~= targetPlayerIndex then
		t.PlayerSlot, t.Player = substitutePlayerIndex, Party.PlayerArray[substitutePlayerIndex]
		Game.ShowStatusText(string.format("%s covered %s", substitutePlayer.Name, targetPlayer.Name), 10)
	end
	
end

-- shield protects from projectiles

local function modifiedDoDamageProjectile(d, def, playerPointer, damage, damageKind)

	-- compute damage reduction
	
	local damageMultiplier = 1.0
	
	for playerIndex = 0, 3 do
	
		local player = Party.Players[playerIndex]
		local defense = getDefenseInfo(player)
		
		if defense.shield.equipped then
			damageMultiplier = damageMultiplier * math.pow(1 - shieldProjectileDamageReduction / 100, defense.shield.level)
		end
		
	end
	
	damage = math.ceil(damage * damageMultiplier)
	
	-- execute original code
	
	def(playerPointer, damage, damageKind)
	
end
mem.hookcall(0x0043A69F, 1, 2, modifiedDoDamageProjectile)

-- display damage rate

local attackPosition = "\t080"
local damagePosition = "\t091"
local damageRatePosition = 180
local damageRateColor = {["r"] = 0xff, ["g"] = 0x00, ["b"] = 0xff, }
local function getAverageDamageRate(player, ranged, monsterArmorClass)

	-- set default armor class
	
	if monsterArmorClass == nil then
		monsterArmorClass = 50
	end

	-- get combat parameters
	
	local recovery = player:GetAttackDelay(ranged)
	local attack
	local damageRangeText
	if ranged then
		attack = player:GetRangedAttack()
	else
		attack = player:GetMeleeAttack()
	end
	if ranged then
		damageRangeText = player:GetRangedDamageRangeText()
	else
		damageRangeText = player:GetMeleeDamageRangeText()
	end
	
	if attack == nil or type(attack) ~= "number" or recovery == nil  or type(recovery) ~= "number" or damageRangeText == nil or type(damageRangeText) ~= "string" then
		return 0
	end
	
	local damageMinText, damageMaxText = string.match(damageRangeText, "(-?%d+)%s*-%s(-?%d+)")
	local damageMin = tonumber(damageMinText)
	local damageMax = tonumber(damageMaxText)
	
	if damageMin == nil or type(damageMin) ~= "number" or damageMax == nil or type(damageMax) ~= "number" then
		return 0
	end
	
	local averageDamage = (damageMax + damageMin) / 2
	
	-- calculate average damage rate against monster and no physical resistance
	
	local chanceToHit = (15 + 2 * attack) / (15 + 2 * attack + 15 + monsterArmorClass)
	local averageDamageRate = math.round(averageDamage * chanceToHit * (100 / recovery))
	
	-- return value
	
	return averageDamageRate
	
end
local function displayStatScreenMeleeAttack(d, def, dlg, font, x, y, color, text, arg_4, arg_5, arg_6)

	-- get player
	
	local player = Party.GetCurrentPlayer()
	
	-- get average damage rate
	
	local averageDamageRate = getAverageDamageRate(player, false)
	
	-- modify text buffer
	
	if averageDamageRate ~= nil then
		local averageDamageRateText = string.format("\r%03d%d", damageRatePosition, averageDamageRate)
		averageDamageRateText = StrColor(damageRateColor["r"],damageRateColor["g"],damageRateColor["b"]) .. averageDamageRateText .. StrColor(0,0,0)
		Game.TextBuffer = string.gsub(Game.TextBuffer, "\t100", attackPosition)
		Game.TextBuffer = string.sub(Game.TextBuffer, 1, string.len(Game.TextBuffer) - 1) .. averageDamageRateText
	end
	
	-- execute original code
	
	def(dlg, font, x, y, color, text, arg_4, arg_5, arg_6)
	
end
mem.hookcall(0x00418C3F, 2, 7, displayStatScreenMeleeAttack)
local function displayStatScreenRangedAttack(d, def, dlg, font, x, y, color, text, arg_4, arg_5, arg_6)

	-- get player
	
	local player = Party.GetCurrentPlayer()
	
	-- get average damage rate
	
	local averageDamageRate = getAverageDamageRate(player, true)
	
	-- modify text buffer
	
	if averageDamageRate ~= nil then
		local averageDamageRateText = string.format("\r%03d%d", damageRatePosition, averageDamageRate)
		averageDamageRateText = StrColor(damageRateColor["r"],damageRateColor["g"],damageRateColor["b"]) .. averageDamageRateText .. StrColor(0,0,0)
		Game.TextBuffer = string.gsub(Game.TextBuffer, "\t100", attackPosition)
		Game.TextBuffer = string.sub(Game.TextBuffer, 1, string.len(Game.TextBuffer) - 1) .. averageDamageRateText
	end
	
	-- execute original code
	
	def(dlg, font, x, y, color, text, arg_4, arg_5, arg_6)
	
end
mem.hookcall(0x00418CD7, 2, 7, displayStatScreenRangedAttack)
local function displayStatScreenDamageRangeText(d, def, dlg, font, x, y, color, text, arg_4, arg_5, arg_6)
	Game.TextBuffer = string.gsub(Game.TextBuffer, "\t100 ", damagePosition)
	def(dlg, font, x, y, color, text, arg_4, arg_5, arg_6)
end
mem.hookcall(0x00418C8B, 2, 7, displayStatScreenDamageRangeText)
mem.hookcall(0x00418D23, 2, 7, displayStatScreenDamageRangeText)

-- approximate distance function

local function getApproximatedDistance(pos1, pos2)
	local d = {math.abs(pos1[0] - pos2[0]), math.abs(pos1[1] - pos2[1]), math.abs(pos1[2] - pos2[2]), }
	table.sort(d)
	return d[3] + (11 / 32) * d[2] + (1 / 4) * d[1]
end

-- engage monsters

local function engageMonsters(leaderMonsterIndex)
	local leaderMonster = Map.Monsters[leaderMonsterIndex]
	for monsterIndex = 1, Map.Monsters.high do
		local monster = Map.Monsters[monsterIndex]
		if Game.MonstersTxt[monster.Id].HostileType > 0 and monster:IsAgainst() > 0 and monster.Room == leaderMonster.Room and engagedMonsterIndexes[monsterIndex] == nil then
			local distance = getApproximatedDistance(monster.Pos, leaderMonster.Pos)
			if distance < followDistance then
				engagedMonsterIndexes[monsterIndex] = true
				monster.HostileType = 4
				monster.ShowOnMap = true
				monster.ShowAsHostile = true
				engageMonsters(monsterIndex)
			end
		end
	end
end

local function MonsterPursueZigZag(d, def, monsterIndex, arg_edx, arg_0, arg_1)
	def(monsterIndex, arg_edx, arg_0, arg_1)
	engageMonsters(monsterIndex)
end
mem.hookcall(0x00402571, 2, 2, MonsterPursueZigZag)
local function MonsterPursueStraight(d, def, monsterIndex, arg_edx, arg_0, arg_1, arg_2)
	def(monsterIndex, arg_edx, arg_0, arg_1, arg_2)
	engageMonsters(monsterIndex)
end
mem.hookcall(0x00402552, 2, 3, MonsterPursueStraight)
mem.hookcall(0x00406F27, 2, 3, MonsterPursueStraight)

function events.MonsterAttacked(t, attacker)

	if attacker.Player ~= nil then
		
		-- engage nearby monsters
		
		engageMonsters(t.MonsterIndex)
		
	end
	
end

-- activation distance

local function modifyActivationDistance(d, def, monsterPointerBits, distance)
	local monsterPointer = monsterPointerBits - 0x24
	local monsterIndex, monster = GetMonster(monsterPointer)
	if engagedMonsterIndexes[monsterIndex] ~= nil then
		distance = math.min(activationDistance - 1, distance)
	end
	return distance
end
mem.asmpatch(
	0x0040158C,
	"imul   ebx,ebx,0xb\n" ..
	"shr    ebx,0x5\n" ..
	"add    eax,ebx\n" ..
	"shr    ecx,0x2\n" ..
	"add    eax,ecx\n" ..
	"movsx  ebx,WORD [esi+0x64]\n" ..
	"sub    eax,ebx\n" ..
	"mov    ecx,esi\n" ..
	"mov    edx,eax\n" ..
	"call   0x00000001\n" ..
	"mov    edi,eax\n" ..
	"mov    DWORD [ebp-0xc],edi\n" ..
	"cmp    edi,0x0\n",
	0x24
)
mem.hookcall(0x0040158C + 0x17, 2, 0, modifyActivationDistance)

-- engagement distance

local checkMonsterIndex = nil
local function monsterCheck(d, def, c, d)
	local index1 = bit.rshift(c, 3)
	local type1 = bit.band(c, 7)
	local index2 = bit.rshift(d, 3)
	local type2 = bit.band(d, 7)
	if type2 == 3 then
		checkMonsterIndex = index2
	else
		checkMonsterIndex = nil
	end
	return def(c, d)
end
mem.hookcall(0x0040136D, 2, 0, monsterCheck)
mem.hookcall(0x00401923, 2, 0, monsterCheck)

local function modifyEngagementDistance1(d, def, distanceSquared)
	local distance = math.sqrt(distanceSquared)
	if checkMonsterIndex ~= nil and engagedMonsterIndexes[checkMonsterIndex] ~= nil then
		distance = math.min(engagementDistance - 1, distance)
	end
	return distance
end
mem.hookcall(0x004072C5, 1, 0, modifyEngagementDistance1)

local function modifyEngagementDistance2(d, def, c, d, arg_0, arg_1)
	local index1 = bit.rshift(c, 3)
	local type1 = bit.band(c, 7)
	local index2 = bit.rshift(d, 3)
	local type2 = bit.band(d, 7)
	local monsterIndex = index1
	local dataPointer = def(c, d, arg_0, arg_1)
	local distancePointer = dataPointer + 0xC
	if engagedMonsterIndexes[monsterIndex] ~= nil then
		mem.i4[distancePointer] = math.min(engagementDistance - 1, mem.i4[distancePointer])
	end
	return dataPointer
end
mem.hookcall(0x0040206B, 2, 2, modifyEngagementDistance2)

local function modifyEngagementDistance3(d, def, c, d, arg_0, arg_1)
	local index1 = bit.rshift(c, 3)
	local type1 = bit.band(c, 7)
	local index2 = bit.rshift(d, 3)
	local type2 = bit.band(d, 7)
	local monsterIndex = index1
	local dataPointer = def(c, d, arg_0, arg_1)
	local distancePointer = dataPointer + 0xC
	if engagedMonsterIndexes[monsterIndex] ~= nil then
		mem.i4[distancePointer] = math.min(engagementDistance - 1, mem.i4[distancePointer])
	end
	return dataPointer
end
mem.hookcall(0x00406DBC, 2, 2, modifyEngagementDistance3)

-- party cumulative skills

local function getCombinedSkillInfo(skill, rankMultipliers)

	if rankMultipliers == nil then
		rankMultipliers = skillEffectRankMultipliers
	end
	
	local combinedRank = 0
	local combinedLevel = 0
	local combinedEffect = 0
	for playerIndex = 0, 3 do
		local level, rank = SplitSkill(Party.PlayersArray[playerIndex].Skills[skill])
		if level ~= nil and level >= 1 then
			combinedRank = math.max(combinedRank, rank)
			combinedLevel = combinedLevel + level
			combinedEffect = combinedEffect + level * rankMultipliers[rank]
		end
	end
	
	-- compute result rank
	
	local effectRank
	if		combinedEffect >= 50 then	effectRank = const.GM
	elseif	combinedEffect >= 21 then	effectRank = const.Master
	elseif	combinedEffect >=  8 then	effectRank = const.Expert
	elseif	combinedEffect >=  1 then	effectRank = const.Novice
	else							effectRank = 0
	end
	combinedRank = math.max(combinedRank, effectRank)
	
	return combinedRank, combinedLevel, combinedEffect
	
end

local function getPlayerItemBonus(player, skill)

	local stat = skillStats[skill]
	
	if stat == nil then
		return 0
	end
	
	return player:CalcStatBonusByItems(stat)
	
end

local function getCombinedItemBonus(skill)

	local stat = skillStats[skill]
	
	if stat == nil then
		return 0
	end
	
	bonus = 0
	
	for playerIndex = 0, 3 do
		local player = Party.PlayersArray[playerIndex]
		bonus = bonus + player:CalcStatBonusByItems(stat)
	end
	
	return bonus
	
end

function events.GetSkill(t)

	-- party cumulative skills

	local partyCumulativeSkill = partyCumulativeSkills["regular"][t.Skill]
	if partyCumulativeSkill == nil then
		return
	end
	
	local computationType = partyCumulativeSkill["type"]
	if computationType == nil or not (computationType >= 1 and computationType <= 2) then
		return
	end
	
	-- split result
	
	local level, rank = SplitSkill(t.Result)
	
	-- get values
	
	local playerLevel, playerRank = SplitSkill(t.Player.Skills[t.Skill])
	local combinedRank, combinedLevel, combinedEffect = getCombinedSkillInfo(t.Skill)
	local playerItemBonus = getPlayerItemBonus(t.Player, t.Skill)
	local combinedItemBonus = getCombinedItemBonus(t.Skill)
	
	-- adjust result
	
	rank = math.max(rank, combinedRank)
	
	if		computationType == 1 then
		level = level + (- playerLevel + combinedLevel) + (- playerItemBonus + combinedItemBonus)
	elseif	computationType == 2 then
		local effectLevel = combinedEffect / skillEffectRankMultipliers[rank]
		level = level + (- playerLevel + effectLevel) + (- playerItemBonus + combinedItemBonus)
	else
		return
	end
	
	t.Result = JoinSkill(level, rank)
	
end

function events.GetDisarmTrapTotalSkill(t)

	local skill = const.Skills.DisarmTraps

	-- get player values
	
	local playerLevel, playerRank = SplitSkill(t.Player.Skills[skill])
	local playerItemBonus = getPlayerItemBonus(t.Player, skill)
	
	local playerEffect = playerLevel * skillEffectRankMultipliers[playerRank]
	
	-- get combined values
	
	local combinedRank, combinedLevel, combinedEffect = getCombinedSkillInfo(skill)
	local combinedItemBonus = getCombinedItemBonus(skill)
	
	-- get hirelings bonus

	local hirelingsBonus = 0
	if Party.HasNPCProfession(const.NPCProfession.Burglar) then
		hirelingsBonus = hirelingsBonus + 8
	end
	if Party.HasNPCProfession(const.NPCProfession.Locksmith) then
		hirelingsBonus = hirelingsBonus + 6
	end
	if Party.HasNPCProfession(const.NPCProfession.Tinker) then
		hirelingsBonus = hirelingsBonus + 4
	end
	
	-- adjust result

	t.Result = t.Result + (- playerEffect + combinedEffect) + (- playerItemBonus + combinedItemBonus)
	
	-- special case of "of Thievery" item
	-- it doubles skill and bonuses
	
	local playerOfThievery = (t.Player:HasItemBonus(0x23) == 1)
	
	local combinedOfThievery = false
	for playerIndex = 0, 3 do
		player = Party.PlayersArray[playerIndex]
		if player:HasItemBonus(0x23) == 1 then
			combinedOfThievery = true
			break
		end
	end
	
	if playerOfThievery then
		t.Result = t.Result - playerLevel - playerItemBonus - hirelingsBonus
	end
	
	if combinedOfThievery then
		t.Result = t.Result + combinedLevel + combinedItemBonus + hirelingsBonus
	end
	
end

function events.GetMerchantTotalSkill(t)

	local skill = const.Skills.Merchant

	-- get player values
	
	local playerLevel, playerRank = SplitSkill(t.Player.Skills[skill])
	local playerItemBonus = getPlayerItemBonus(t.Player, skill)
	
	local playerEffect = playerLevel * skillEffectRankMultipliers[playerRank]
	
	-- get combined values
	
	local combinedRank, combinedLevel, combinedEffect = getCombinedSkillInfo(skill)
	local combinedItemBonus = getCombinedItemBonus(skill)
	
	-- adjust result
	
	t.Result = t.Result + (- playerEffect + combinedEffect) + (- playerItemBonus + combinedItemBonus)
	
end

function events.GetPerceptionTotalSkill(t)

	local skill = const.Skills.Perception

	-- get player values
	
	local playerLevel, playerRank = SplitSkill(t.Player.Skills[skill])
	local playerItemBonus = getPlayerItemBonus(t.Player, skill)
	
	local playerEffect = playerLevel * skillEffectRankMultipliers[playerRank]
	
	-- get combined values
	
	local combinedRank, combinedLevel, combinedEffect = getCombinedSkillInfo(skill)
	local combinedItemBonus = getCombinedItemBonus(skill)
	
	-- adjust result
	
	t.Result = t.Result + (- playerEffect + combinedEffect) + (- playerItemBonus + combinedItemBonus)
	
end

function events.GetLearningTotalSkill(t)

	local skill = const.Skills.Learning

	-- get player values
	
	local playerLevel, playerRank = SplitSkill(t.Player.Skills[skill])
	local playerItemBonus = getPlayerItemBonus(t.Player, skill)
	
	local playerEffect = playerLevel * skillEffectRankMultipliers[playerRank]
	
	-- get combined values
	
	local combinedRank, combinedLevel, combinedEffect = getCombinedSkillInfo(skill, learningRankMultipliers)
	local combinedItemBonus = getCombinedItemBonus(skill)
	
	-- combined values are shared among party
	
	combinedEffect = math.ceil(combinedEffect / 4)
	combinedItemBonus = math.ceil(combinedItemBonus / 4)
	
	-- adjust result
	
	t.Result = t.Result + (- playerEffect + combinedEffect) + (- playerItemBonus + combinedItemBonus)
	
end

-- display combined skill

local skillLevelPositionShift = 46
local skillEffectRankPosition = 173
local skillEffectColor = {["r"] = 0xff, ["g"] = 0x00, ["b"] = 0xff, }
local function displaySkill(d, def, dlg, font, x, y, color, text, arg_4, arg_5, arg_6)

	-- get current skill level position
	
	local markerBegin, markerEnd = Game.TextBuffer:find("\r")
	
	if markerEnd == nil then
		return def(dlg, font, x, y, color, text, arg_4, arg_5, arg_6)
	end
	
	local originalSkillLevelPosition = tonumber(Game.TextBuffer:sub(markerEnd, markerEnd + 3))
	
	-- compute new positions
	
	local skillLevelPosition = originalSkillLevelPosition + skillLevelPositionShift
	local skillEffectLevelPosition = originalSkillLevelPosition
	
	-- shift skill level to the left
	
	Game.TextBuffer = Game.TextBuffer:gsub(string.format("\r%03d", originalSkillLevelPosition), string.format("\r%03d", skillLevelPosition))
	
	-- get player
	
	local player = Party.GetCurrentPlayer()
	
	-- get displaySkillIndex
	
	local displaySkillIndex = nil
	for skillIndex = const.Skills.Staff, const.Skills.Learning do
		local skillName = Game.SkillNames[skillIndex]
		if Game.TextBuffer:sub(1, #skillName) == skillName then
			displaySkillIndex = skillIndex
			break
		end
	end
	
	if displaySkillIndex == nil then
		return def(dlg, font, x, y, color, text, arg_4, arg_5, arg_6)
	end
	
	-- set skill effect text
	
	local skillRank = nil
	local skillEffect
	
	if partyCumulativeSkills["regular"][displaySkillIndex] ~= nil then
	
		-- regular cumulative skill
		
		local level, rank = SplitSkill(player:GetSkill(displaySkillIndex))
		skillRank = rank
		skillEffect = partyCumulativeSkills["regular"][displaySkillIndex]["type"] == 1 and level or level * skillEffectRankMultipliers[rank]
		
	elseif partyCumulativeSkills["custom"][displaySkillIndex] ~= nil then
	
		-- custom cumulative skill
		
		if		displaySkillIndex ==  const.Skills.Merchant then
			skillEffect = player:GetMerchantTotalSkill()
		elseif	displaySkillIndex ==  const.Skills.DisarmTraps then
			skillEffect = player:GetDisarmTrapTotalSkill()
		elseif	displaySkillIndex ==  const.Skills.Perception then
			skillEffect = player:GetPerceptionTotalSkill()
		elseif	displaySkillIndex ==  const.Skills.Learning then
			skillEffect = player:GetLearningTotalSkill()
		else
			skillEffect = nil
		end
	
	else
		skillEffect = nil
	end
	
	if skillEffect ~= nil then
	
		-- format output
		
		local skillEffectText = ""
		
		if skillRank ~= nil then
			skillEffectText = skillEffectText .. string.format("\t%03d%s", skillEffectRankPosition, rankLabels[skillRank])
		end
		
		local skillEffectOutput = skillEffect >= 10000 and "++" or string.format("%2d", skillEffect)
		skillEffectText = skillEffectText .. string.format("\r%03d%s", skillEffectLevelPosition, skillEffectOutput)
		
		skillEffectText = StrColor(skillEffectColor["r"],skillEffectColor["g"],skillEffectColor["b"]) .. skillEffectText .. StrColor(0,0,0)
		
		-- modify text buffer
		
		if skillEffectText ~= nil then
			Game.TextBuffer = Game.TextBuffer .. skillEffectText
		end
		
	end
	
	-- execute original code
	
	return def(dlg, font, x, y, color, text, arg_4, arg_5, arg_6)
	
end
mem.hookcall(0x00419957, 2, 7, displaySkill)
mem.hookcall(0x00419B47, 2, 7, displaySkill)
mem.hookcall(0x00419F44, 2, 7, displaySkill)
mem.hookcall(0x00419D4B, 2, 7, displaySkill)

-- disable party sliding indoor

mem.asmpatch(0x00472B47, "lea     edx, [eax+0x10]", 0x3)

-- disable party sliding outdoor

mem.asmpatch(0x00473ADD, "lea     ecx, [edx+0x10]", 0x3)

local function partyMovingOutdoorSlidingSlope(d, def)
	return 0
end
mem.hookcall(0x00474448, 0, 0, partyMovingOutdoorSlidingSlope)

-- disable monsters sliding indoor

mem.asmpatch(0x0046F9C9, "lea     ecx, [edi+0x10]", 0x3)

-- disable monsters sliding outdoor

local function monsterMovingOutdoorSlidingSlope(d, def)
	return 0
end
mem.hookcall(0x00470A25, 0, 0, monsterMovingOutdoorSlidingSlope)

-- randomize monster preferences
-- give them 50% chance attacking random player instead of prefered

local function ChooseTargetPlayer(d, def, monster)
	local chosenPlayer = def(monster)
	if monster.PrefClass ~= 0 and math.random() < 0.5 then
		local targettablePlayers = {}
		for playerIndex = 0, 3 do
			local player = Party.PlayersArray[playerIndex]
			if player:IsConscious() then
				table.insert(targettablePlayers, playerIndex)
			end
		end
		if table.getn(targettablePlayers) >= 1 then
			chosenPlayer = targettablePlayers[1 + math.floor(math.random() * table.getn(targettablePlayers))]
		end
	end
	return chosenPlayer
end
mem.hookfunction(0x00426DC7, 0, 1, ChooseTargetPlayer)

-- do not overwrite monster velocity with default value

local function monsterLoadFrames(d, def, monsterPointer, arg_0)
	def(monsterPointer, arg_0)
	local monsterIndex, monster = GetMonster(monsterPointer)
	monster.Velocity = monster.MoveSpeed
end
mem.hookcall(0x0047F39B, 1, 1, monsterLoadFrames)

-- double monsters speed limit

mem.asmpatch(0x00470871, "mov     eax, 0x7D0", 0x5)

-- disable not percieved doors

local function getPartyPerceptionEffect()
	local partyPerceptionEffect = 0
	for playerIndex = 0, 3 do
		local player = Party.PlayersArray[playerIndex]
		local playerPerceptionEffect = player:GetPerceptionTotalSkill()
		partyPerceptionEffect = math.max(partyPerceptionEffect, playerPerceptionEffect)
	end
	return partyPerceptionEffect
end

local function CanPercieve()
	return mem.call(0x00497F4E, 1, 0x00ACCE38) == 1
end

local function OpenDoor(d, def, doorId, action)

	-- not open action - process normally
	
	if action ~= 0 then
		return def(doorId, action)
	end

	-- find door
	
	local door = nil
	for doorIndex = 0, Map.Doors.high do
		local doorIndexDoor = Map.Doors[doorIndex]
		if doorIndexDoor.Id == doorId then
			door = doorIndexDoor
			break;
		end
	end
	
	if door == nil then
		return def(doorId, action)
	end
	
	-- not secret door - process normally
	
	local secret = false
	for facetIdIndex = 0, door.FacetIds.high do
		local facetId = door.FacetIds[facetIdIndex]
		local facet = Map.GetFacet(facetId)
		if facet.IsSecret then
			secret = true
			break
		end
	end
	
	if not secret then
		return def(doorId, action)
	end
	
	-- percieved door - process normally
	
	local requiredPerceptionEffect = Game.MapStats[Map.MapStatsIndex].Per * 2
	local partyPerceptionEffect = getPartyPerceptionEffect()
	
	if partyPerceptionEffect >= requiredPerceptionEffect then
		return def(doorId, action)
	end
	
	-- disable not percieved door
	
	Game.ShowStatusText(string.format("Perception effect %d is required to open this door", requiredPerceptionEffect), 10)
	
	return
	
end
mem.hookcall(0x00447E96, 2, 0, OpenDoor)

-- disarm trap message

local function failedDisarmRand()
	local requiredDisarmTrapEffect = Game.MapStats[Map.MapStatsIndex].Lock * 2
	Game.ShowStatusText(string.format("Disarm Trap effect %d is required to disarm this chest", requiredDisarmTrapEffect), 10)
end
mem.hookcall(0x00420587, 0, 0, failedDisarmRand)

-- disallow using unidentified item

local function equipItem(d, def)

	-- default case
	
	if Mouse.Item.Number == 0 or Mouse.Item.Identified then
		return def()
	end
	
	-- unidentified item
	
	Party.GetCurrentPlayer():ShowFaceAnimation(const.FaceAnimation.CantEquip)
	Game.ShowStatusText("Cannot use unidentified item", 10)
	return
	
end
mem.hookcall(0x00434AE9, 0, 0, equipItem)

-- identify item cost scales with party experience

local function identifyItemCost(d)
	d.ecx = d.ecx * 10 * getPartyExperienceLevel()
end
mem.autohook(0x004B811A, identifyItemCost, 5)

-- DisarmTrap GrandMaster does not give 100% success

mem.asmpatch(0x004912CD, "cmp     eax, 5", 0x3)

-- IdentifyItem GrandMaster does not give 100% success

mem.asmpatch(0x0049112F, "cmp     eax, 5", 0x3)

-- Perception GrandMaster does not give 100% success

mem.asmpatch(0x00491276, "cmp     eax, 5", 0x3)

-- RepairItem GrandMaster does not give 100% success

mem.asmpatch(0x00491156, "test    bh, 2", 0x3)

-- can hold dagger in left hand starting Novice

mem.asmpatch(0x00469359, "test    eax, 0FFFFFFFFh", 0x5)

-- can hold sword in left hand starting Expert

mem.asmpatch(0x00469375, "cmp     eax, 2", 0x3)

