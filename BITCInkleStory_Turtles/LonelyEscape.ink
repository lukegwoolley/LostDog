=== lonely_escape
-> approach_the_drain
= approach_the_drain
#scene: AquariumFloor
#right: octopus
#left: turtle
#track:KindaGuitarAcouLoop
"Well this is it", the Octopus tells you, gesturing at the drain. "I can open it, and you'll be free to return home." #octopus
*"Thank[s."] you so much, you really are a kind octopus."   #player
"It really isn't any trouble. You be safe now." #octopus
His tentacle wraps around the complicated looking contraption, squeezing a button and pulling a lever all at once.
You look down at your flippers and are thankful to have such a helpful friend on your side.
**"I couldn't have done this without you[."], you're a real pal," you tell the Octopus, as he pulls open the drain cover and you clamber in.  #player
He smirks at you, "Don't worry about us in here, we'll be just fine. So long kiddo."#octopus
***... #player #action
-> swirling_drain
*["I can't just leave them behind."] "I can't do this. I can't just leave them behind, let's go back!"   #player
The Octopus looks at you sternly, pulls open the drain cover, and gestures towards it.
"This is your chance, get out while you can."   #octopus
**Back away #player #action
    You push back with your flippers, but don't move anywhere. You realise you're rising off the ground a little, and that you can't move at all.
    "Wh-what're you doing?" #player #track:KindaGuitarElecLoop
    You look around wildly, realising there's a tentacle wrapped around your shell.
    ***"Put me down!"[] you yell, but it's too late, you're in the drain now. #player
    The Octopus looks down at you.
    "Sorry little friend, you're nothing but trouble."  #octopus
    And he lets go.
    ****... #player #action
    ->swirling_drain
    
**Climb in #player #action
    You know he's right, and push yourself down into the drain.
    "So long, little friend!"   #octopus
    ->swirling_drain

= swirling_drain
# scene: OceanStart
#left: player
#right:
#track:KindaLonelyHarpLoop
~turtletype="lonely"
The water rushes around you, pulling you down into the darkness, where you're suddenly plunged into the sea. It's cold but it's freedom.
* Turn back #player #action
    The aquarium looms over the pier. It's so much bigger than you ever thought possible.
    Your mind wanders to the people you left behind.
    You turn and leave.
    -> END
* Keep swimming #player #action
    -> END
-> END