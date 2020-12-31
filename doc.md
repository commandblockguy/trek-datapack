All scoreboard objectives, scoreboard tags, and custom NBT tags will be prefixed with "trek" and camelCased. The prefix and casing will be implied for the rest of this document. All entities will have a scoreboard tag "trek". Temporary tags are prefixed with "trekTmp" and not listed in this document.

Player Objectives:
==================

-   DebugTrigger - A trigger to allow non-ops (me) call debug functions.

Player Tags:
============

-   Debug Access - Given to those who can access debug info

-   Debug Active - Given to those to whom debug info is currently being shown

General Variables:
==================

(stored in objective trekGeneral, camelCased)

-   In Progress - 1 if an event is currently running
-   Exploding - 1 if the event has ended, but there are still TNT loaded

Game Objects:
=============

### Ships:

Each ship will have an invisible armor stand below the teleportation room. The armor stand should face in the same direction as the ship, with its eye-level exactly horizontal.

Scoreboard Tags: Ship, ShieldDisabled

Scoreboard Objectives:

-   ID - A unique ID assigned to each ship. When spawned, the ID is 0. When the game is initialized, all ships with an ID of 0 are assigned an ID of 1 greater than the previous ID assigned.

-   Target ID - The ID of the ship that this ship's cannons are attacking

-   Shield Health - Amount of health remaining in the shield

NBT: Invisible:1b, Invulnerable:1b, NoGravity:1b

### Phasers:

Four end crystals will be placed on the top of each ship. They will be used to generate a laser effect while shooting. The phasers will not be part of the schematic but will be spawned as part of the initialization script.

Scoreboard Tags: Phaser

Scoreboard Objectives:

-   ID: ID of the parent ship this phaser belongs to

-   Cooldown Time: Number of ticks since the phaser last fired. If <10, the beam will show, if <100, the phaser cannot fire again.

### Phaser Projectiles:

A TNT entity spawned by a phaser.

Scoreboard Tags: PhaserProjectile

### Shield Collector:

A hopper minecart that players can throw items into. It has 63 items in the first slot. If this number ever increases to 64, it is reset back to 63 and the shield amount is incremented. Item: redstone dust named "Shield Fuel"

Scoreboard Tags: ShieldCollector

### Torpedo Collector:

Same as shield collector, but for torpedos. Item: Fire charge named "Torpedo"

Scoreboard Tags: TorpedoCollector

### Torpedo Marker:

An armor stand used to mark the location where new fireballs are spawned in.

Scoreboard Tags: TorpedoMarker

### Torpedo:

A fireball.

Scoreboard Tags: Torpedo

### Core Sensor:

An end crystal inside the core of each ship that explodes if the core does.

Scoreboard Tags: CoreSensor

### Fabricator

A fabricator is an armor stand that gives items to nearby players using /loot.

Scoreboard Tags: InternalFabricator, ExternalFabricator
