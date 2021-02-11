# The sausage dog in a raincoat is here ("a flash of familiar yellow" if you've seen the fisherman)
# You have to know his name
# If you've not yet spoken to the fisherman at the pier, it'll suggest random names for you to try, but none of them will be correct
#You can explore the beach and find a fish

VAR SausageFound = false
VAR SausageNameKnown = false
VAR GotSausage = false
VAR HaveFish = false

=== Beach ===
#scene:beach
You can hear the waves lapping on the shore and the cry of gulls above.

    *[Look out at the waves] ->AFish
    *[Look along beach] ->ASausage
    *[Go back to the green] ->Park
    
=AFish

The tide is out with seaweed strewn about and the odd shiny pebble or shell peeking out of the sand. As you continue your walk you also notice... a fish? 
Caught out by the tide it's just been left here, out on the sand.

    *[Look around the beach] You ignore the fish in the sand and glance around, the sun shining down, fluffy clouds in the sky, it's a beautiful day. ->Beach
    *[Take the fish] You lean down and... pick up the fish... Sure, you can probably find a use for this. ~HaveFish = true 
    
Fish in your pocket, you glance around the beach.
->Beach

=ASausage

The beach stretches out before you and seems rather empty; it seems most people are staying at home or sticking to the green today. But there, a flash of yellow from behind a cluster of rocks.

    *[Ignore it] It's likely nothing important. You enjoy the fresh sea air for a while longer. ->Beach
    {FishermanMet} *Yellow? Like the Fisherman said? [] You go towards the rocks to get a closer look, and there shaking on the spot amongst the rocks is a daschund in a yellow raincoat! You can't reach in to grab him but you'll have no issue calling him out. ->CallOut   
    *[Get closer for a better look]

You walk towards the rocks where you saw the colour and start to circle it. As you get to the other side, you see the yellow again. Looking down, you see a daschund! ~SausageFound
He's wearing a yellow raincoat and you can see him shaking on the spot amongst the rocks, he's not stuck, but it's too small a gap for you to reach in and pull him out. 
The dog seems reluctant to move from his spot though... maybe if you call out to him?
->CallOut

=CallOut
    # If dog name not known
    *[Call out to the dog] {~Milo|Frank|Buddy|Spot}
    Not that one I guess...
    ->CallOut
    *I should see if anyone around here know his name... ->Park
    # If dog name known
   {SausageNameKnown} *I know your name! [] Come here Bandit! That's a good boy, let's get you home! ~GotSausage = true
   
    
-> Park