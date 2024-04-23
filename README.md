# Might & Magic 7: skill emphasis mod

This is a skill emphasis mod MM7 implementation. See similar [MM6 implementation](https://github.com/tnevolin/mm6-skill-emphasis-mod) for more info.

# Goal

Return RPG element into the game by emphasising skill importance.

* Skill level should be the main source of character advancement.
* Skill level should be more important than skill rank.
* Combat and Magic skill advancement should be equally beneficial.
* All skills should be somehow useful.
* All buffs should be somehow useful.

# Status

Playable. Testing skill balance now. Seems to be passable with hirelings, buffs, and alchemy: challenging enough without too much grinding.

# Weapon

Weapon skills provide more attack, recovery, damage, AC per level.

All of the standard bonuses kick in right at the Novice rank. Higher ranks may increase them a little but not tremendously, making level advancement more imporant than rank.

With new values weapon roughly increases damage rate by 10%-15% per level depending on the weapon type.

![Axe](https://github.com/tnevolin/mm7-skill-emphasis-mod/blob/main/_images/mm7_axe_description.png)

## Staff

Skill level grants a chance to deliver random elemental damage to the target. Elemental damage is proportional to the character corresponding magic skill level.

This ecourages staff usage for spell caster, especially sorcerer. Monk does not benefit from this ability as they do not have elemental magic.

## Mace

Skill level grants a chance to paralize opponent.

## Dagger

Can be held in left hand at Novice.

Single dagger is pretty weak. This helps dagger oriented character to make a difference from beginning. Also, can be easily used as an auxilliary weapon upon learning without skill points investment.

## Sword

Can be held in left hand at Expert.

Vanilla requires investing 27 skill points just to be able to dual wield with it. It feels a little bit excessive to accumulate that many skill points and not having immediate effect from it in the process.

## Two handed weapon

Skill level grants additional damage per level to two handed axe, spear, and sword.

## Dual wielding

All bonuses from both weapons are added together thus making dual wielding the best offensive option.

## Armsmaster

Armsmaster provides more attack, recovery, damage per level to match accelerated weapon skill progression.

## Unarmed

Unarmed benefits partially, when it was not in vanilla.

# Armor

Armor skills provide more AC per level.

## Shield

Shield decreases projectile damage to whole party.

## Leather

Grants hefty elemental resistance to the wearer.

## Chain

Grants small elemental resistance to the wearer.

## Plate

Plate wearer has a chance to cover other team members from physical attack. Chance increases with rank.

## Dodging

Dodging benefits partially, when it was not in vanilla.

# Magic

Magic skill advancement is unchanged but some spells are modified. Subject for change with version.

The idea was to make low level offensive spell useful at least until higher level version is available.

|spell|fixed|level|
|----|----:|----:|
|Fire Bolt|3|1-4|
|Fireball|4|1-4|
|Fire Spike|0|1-40|
|Lightning Bolt|8|1-8|
|Implosion|12|1-12|
|Ice Bolt|4|1-5|
|Ice Blast|8|1-8|
|Deadly Swarm|6|1-4|
|Blades|9|1-9|
|Rock Blast|4|1-6|
|Mind Blast|5|1-3|
|Harm|8|1-3|
|Flying Fist|12|1-10|
|Destroy Undead|12|1-12|
|Toxic Cloud|15|1-10|
|Shrapmetal|3|1-3|
|Dragon Breath|0|1-15|
|Souldrinker|25|1-2|

# Miscelaneous

## Team work

Some skills used by a single person but beneficial to the whole party are cumulative. All party members work together and contribute to each other ability. Then the effective/total skill effect is shared among the party. Meaning all players are equally proficient with cumulative skill regardless of each other contribution, even if player itself does not possess this skill at all.

This allows greater flexibility in party composition. Lack of higher ranks in these skills could be compensated by developing them in multiple characters at once.

* Alchemy
* Identify Item
* Identify Monster
* Repair Item
* Stealing
* Disarm Trap
* Merchant
* Perception
* Learning (combined skill is divided by 4 to give each player an average)

### Cumulative skill effect

Cumulative skill effect is the sum of each player skill effect. Skill effect formula is different depending on skill type.

```
Linear effect = level
Ranked effect = level \* rank multiplier (Novice = 1, Expert = 2, Master = 3, Grand = 5)
```

Alchemy uses linear effect. All other cumulative skills use ranked effect.

### Cumulative skill rank

As soon as ranked cumulative effect reaches that would be produced by a single rank character, all players effectively reach this rank.

|effective rank|effect|
|----|----:|
|Novice|1|
|Expert|8|
|Master|27|
|Grand|50|

## Alchemy

Cumulative. Effect is linear.

## Identify Item

Cumulative. Effect is ranked.

* GrandMaster no loger provides 100% success.
* Players cannot use unidentified items.
* Cost of identification in shops is high and scales with party experience.

## Identify Monster

Cumulative. Effect is ranked.

* GrandMaster no loger provides 100% success.
* Adds 1/4 of effect to all characters damage.

## Repair Item

Cumulative. Effect is ranked.

* GrandMaster no loger provides 100% success.

## Stealing

Cumulative. Effect is ranked.

* GrandMaster no loger provides 100% success.
* Adds effect to gold paid to the party (per transaction).

## Disarm Trap

Cumulative. Effect is ranked.

* GrandMaster no loger provides 100% success.
* Chest locks are 1.5 times harder to pick.
* Trap damage is 5 times more damageous.

## Merchant

Cumulative. Effect is ranked.

* GrandMaster no loger provides 100% success.

## Perception

Cumulative. Effect is ranked.

* GrandMaster no loger provides 100% success.
* Party cannot open not percieved door.

## Learning

Cumulative. Effect is ranked and then divided by 4.

No much changes here except averaging learning across party. I don't see much game benefits in having party members different level.

# Classes

Some skills are reshuffled between classes for better distribution of rare/often used skills. Some Examples are below. See in-game descriptions for others.

* Knight cannot learn staff.
* Knight cannot learn dodging.
* Shield GM is given to Cleric instead of Knight.
* Icreased number of Grands and Masters of different magic schools.
* Classes able to use magic after promotion can now use it from the start.
* Miscelaneous skills are redistributed a little.

# Monsters

* Monsters have more damage and more hit points to compensate for increased weapon damage and armor class.
* Monsters have higher speed to catch up with the party and do not allow paryt running and shooting with impunity.
* Non flying and non shooting monsters now shoot arrows as a secondary attack. Now they are not helpless when cannot reach the party and shoot back. The importance of the shield spell increases.

## Engagement

Monsters are engaged whenever nearby monster is engaged. Thus attacking player with the whole mob at once. Extreme fun!

It is still possible to run away from not so fast moving monsters since they may be slowed down by terrain or sideway movement.

# Other

## Temple, Tavern, Food

Temple healing price is proportional to healed HP+SP and grows with party experience.

Tavern room price is about a quarter of temple price to heal everybody. Thus making tavern rest cheaper than temple healing in case of severe damage. However, sleeping cannot restore many ailments.

Food price is proportional to the pack size and also grows with party experience.

## Books

Book values grow speeper.

## Hirelings

Some corrections in Hireling prices.

| profession | cost |
|----|----:|
| Chaplain | 200 |
| Piper | 1000 |
| Monk | 1000 |
| ArmsMaster | 2000 |
| WeaponsMaster | 3000 |
| Squire | 4000 |
| Duper | 400 |
| Trader | 500 |
| Merchant | 1000 |
| Herbalist | 200 |
| Apothecary | 400 |
| Hunter | 100 |
| Sage | 200 |
| Scholar | 300 |

# Mechanics

## Attack

Attack formula is modified a bit to emphasise difference between Attack and AC, rather than their ratio as in vanilla. Character or monster has 50% chance to hit when their attack equals to opponent AC, 75% if their attack is ~50 more and 25% if attack ~50 less.

## Recovery

Recovery reduction is treated as a speed increase. Adding 100 recovery bonus now allows character attacking twice as fast (recovery = 50) instead of dropping it to zero.

## Homing missiles

Missiles (arrows and spells) constantly 3D auto aim their initial target while in flight. Both party and monster cannot dodge missiles by moving sideways/vertically. Obstacles still stop the projectile.

## Sliding on slopes

Party and monster sliding on slopes is reduced to some extent. The "king of the hill" tactics is no longer 100% effective.

# Quality of life

## Damage rate

Damage rate is displayed in purple at the stats screen. This is a computed equipped weapon damage rate assuming opponent AC = 50. Excellent for different weapon set comparison.

## Cumulative skill effect

Cumulative skill effect is displayed in purple at the skills screen. This is the result of what game internally uses. No need to use calculator to add them all up.

## Bringing needed hirelings to party

This is a convenience fix. I am tired to reload game hundreds times just to find needed hireling. Time waste. I have implemented a keyboard shortcut that brings available outside walking peasants to the party and set their professions. Works outdoor only.

| shortcut | hirelings |
|----|----|
| Alt+B (buffs) | Chaplain, Piper |
| Alt+C (combat) | WeaponsMaster, ArmsMaster, Squire |
| Alt+E (elemental) | SpellMaster, Mystic, Apprentice |
| Alt+S (self) | Prelate, Initiate, Acolyte |
| Alt+R (resistance) | Enchanter |
| Alt+L (learning) | Instructor, Teacher |
| Alt+M (money) | Banker, Factor |
| Alt+T (trading) | Merchant, Trader |
| Alt+1 (land travel) | Pathfinder, Tracker, Guide |
| Alt+1 (horse travel) | Horseman |
| Alt+1 (sea travel) | Navigator, Sailor |
| Alt+U (utility) | WindMaster, WaterMaster |
| Alt+D (disarming) | Tinker, Locksmith, Burglar |

