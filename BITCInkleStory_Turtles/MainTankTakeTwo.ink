VAR TimeToEscape = false
=== main_tank_again ===
->main_tank_again_start
=main_tank_again_start
#scene: MainTank
#track:KindaHarp
~TimeToEscape = true
Once more you descend into the waters of the main tank.
It occurs to you that this may be the last time you ever see it.
You feel
* Sad #player #action
    This place may be a prison but it's extraordinary in its own way, and it stings to know you'll be leaving it behind for good.
    You'd have liked to explore it more thoroughly, but freedom awaits.
* Happy #player #action
    Every moment of captivity is an affront to your very nature.
    You hope that that you're leaving glass and cages behind for good.
* {turtletype=="escape"} Nothing
    It's just another day for an escape turtle.
* {turtletype=="lucky"} Lucky
    Had things gone differently, this place may have become your prison. You count your blessings.
* {turtletype=="brave"} Excited
    This is just another in a long line of adventures. You can't wait to see what comes next.
-

* Go and see the fish #player #action
-> fish_options
