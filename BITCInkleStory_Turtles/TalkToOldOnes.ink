// File for the Old Fish interaction.
// This should be reachable from MainTank.ink

=== talk_to_old_ones
->talk_to_old_ones_start
=talk_to_old_ones_start
#scene: MainTank
#left: turtle
#right:
#track:KindaBrassLoop
You swim towards the older fish's hiding spot by the coral. {!They seem wary of your presence.}
{convinced_old_fish: -> already_convinced}
+ Approach the group of older fish #player #action
    #right:oldshoal
    "We have no interest in talking to outsiders," one of the fish says. #oldshoal
    The group turns away from you.
    -> old_ones_converse_loop
+ Talk to someone else #player #action
    You decide not to interrupt the grumpy fish. You swim back and talk to someone else. #right: #left:

    -> fish_options
    
= old_ones_converse_loop
    *"That's no way to speak to someone, I am only here to help." #player
    That seems to rile the fish.
    "We don't need any help from upstarts like you. We have made a good life for ourselves here. You shouldn't encourage the Parrotfish's harebrained plans" #oldshoal
    **"But I have the Octopus on my side, he can help us! He's offered to help us escape from the corridor." #player
        "We have never heard of this 'octopus'. Do not give us false hope. We are far too old for this daydreaming and nonsense." #oldshoal
        -> old_ones_converse_loop
    +Leave them alone #player #action
        "If you are going to speak to me like that I will find someone else who will listen." #player
        You swim off to find more agreeable fish. #left: #right:

        -> fish_options
    *{convinced_young_fish==true} "The younger fish seemed so excited about my plans to get you all out of here..." #player
        "You let the younger fish get their hopes up? They don't even know what it's like in the ocean." #oldshoal
        **"Is it truly a bad thing to have something to look forward to?" #player
            -> got_them_boys
        **"I know that fish go missing at night. I couldn't live with myself if one of them became a victim." #player
            -> got_them_boys

= got_them_boys
"You make a convincing argument. We will help you, but only so our younger tankmates will have a better chance than we did." #oldshoal
*"Thank you, I won't let you down." #player
*"You'll get a better life out in the ocean, too!" #player
    "Maybe you're right. We'll see, if your plan works." #oldshoal
-You swim back more determined than before. #left: #right:
~ convinced_old_fish = true

-> fish_options

=already_convinced
They don't seem all that interested in chatting to you right now.
    + [Leave them be.]  #player #action
    You decide to leave them be.
-> fish_options
