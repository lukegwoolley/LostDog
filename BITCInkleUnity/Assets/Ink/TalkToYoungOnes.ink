// File for the Young Fish interaction.
// This should be reachable from MainTank.ink
=== talk_to_young_ones
->talk_to_young_ones_start
=talk_to_young_ones_start
#scene: MainTank
#left:turtle
#track:KindaClarinetLoop
{convinced_young_fish: -> already_convinced}
A group of young fish excitedly group around you to hear stories of the great ocean.
#right:youngshoal
* [Approach the group of young fish] #player #action
    You swim up to the fish, smiling.
    {!"Ohhhhh we haven't seen one of you before."} #youngshoal
    -> young_ones_converse_loop
* [Talk to someone else] #player #action
    You decide not to interrupt the young excitable fish. You swim back and talk to another fish. 
    -> fish_options
    
= young_ones_converse_loop
    *"I am a turtle." #player
    "Turtle, cool name!" #youngshoal
    **"Thanks...." #player
    -> young_ones_converse_loop
    *"How long have you been here?" #player
        "We were born here, silly!" #youngshoal
        **"Have you ever heard of the sea?" #player
            "The older fish sometimes talk about it, sounds like an amazing place! They're really grumpy though, it's hard to get them to talk about anything." #youngshoal

        **"What do you think of your tank?" #player
        "We've always wanted to see the world outside of this place. The old ones talk about the big ocean with its huge playground and lots of types of friends! We want to make more friends! We are bored of the same rocks here." #youngshoal

    -- "What if I told you I could get you out of here? Experience the big wide ocean?" #player
    "Oh my goodness!!! Can you really help us??" #youngshoal
        ***"Yes, I have made a lot of friends and we have an amazing plan." #player
            "How do we help? We wanna help!" #youngshoal
   -> young_ones_converse_loop_two

=young_ones_converse_loop_two
*"You are too young to help.* #player
    "That is what everyone says. But we can help! It isn't fair to leave us out!" #youngshoal
    -> young_ones_converse_loop_two
*"Just use your excitable energy to keep up morale and help us to get everyone on board!" #player
    "We can do that leave it to us!" #youngshoal
    #right:
    The young fish swim away chatting to each other about what they will get to see and do with their new found freedom. You turn back, smiling, and head off to talk to someone else. 
    ~ convinced_young_fish = true
    -> fish_options 
= already_convinced
The angel fish crowd around you asking when it's time to go. 
+ "Soon! I just have a couple of things to sort out first..." #player
* "Have you gotten everyone else as excited about the escape as you are?" #player
    "Yes, of course! {convinced_old_fish: The old wrasse said that we convinced them so well that we didn't have to talk about it any more.}" #youngshoal
    "Then we'll be escaping soon, I'm sure." #player
    -
    ++ "I'll let you know when it's time!" #player
You leave them to their chattering.
-> fish_options
