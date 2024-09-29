# TwinBee (SNES) Controls Hack

## Changes
Makes the following change
to the Japanese version of the SNES game
*TwinBee: Rainbow Bell Adventure*
in accordance with a 2015 post by user Maeson
in the romhacking.net thread
*Hack ideas: for those without the skill but with all the ideas*:

In the original game,
the `ATTACK`-button (default: `[Y]`) both attacks
and charges up the `PUNCH` meter when held;
the `JUMP`-button (default: `[B]`) both jumps
and charges up the `JUMP` meter when held.

This hack uncouples those functions,
and creates two new buttons
(called `PUNCH` and `ROCKET` in the options menu),
which lets the player charge up both meters
independently of `ATTACK`ing and `JUMP`ing.

By default these two new buttons are mapped to `[L]` and `[R]`
and the functionality to look left and right had to be sacrificed.

## Download
The latest release can be found on the
[releases page](https://github.com/lightbulb-sun/twinbee-controls/releases).
Patch the original ROM with one of the `.bsdiff`, `.ips` or `.bps` files
to create the hack.

## License
Distributed under the MIT License. See LICENSE for more information.
