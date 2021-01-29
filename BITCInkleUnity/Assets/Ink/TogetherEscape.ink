
=== together_escape
// I've added branch names incase we actually want to make this branch off
->start
=start
#track:KindaGuitarAcouLoop
"We can't leave the others behind! This is no life to live!" #player

"They are only fish. They cannot break out like you, they need water to breathe." #octpous

*   "We can find a way!"    #player
    "You are so innocent little turtle friend." #octopus
*   ["Surely you are clever enough to come up with something?"] "Surely you are clever enough to come up with something?"  #player
    "Oh of course, but there are dangers here that you do not understand."  #octopus
- -> innocence
    
= innocence

*   "What do you mean?" #player
    "Fish keep mysteriously disappearing, I would not like to see you .... become a snack."  #octopus
    -> mantis_snacks
    
= mantis_snacks 
    
You pale in shock.
*   "A snack!? Do you think fish are being eaten by someone?" # player
    "... I .... have no clue. However, there is a rumour that the Mantis Shrimp in the corner of the tank has not been the friendliest in his past." #octopus
*   "Do you know what is causing these disappearances?" #player
    "Not what, but there could be a who."   #octopus
    "The Mantis Shrimp has, let's say, a suspicious aura about him."    #octopus
- -> mantis_bad
    
= mantis_bad

*   "I could investigate the Mantis Shrimp!"    #player
    The Octopus looks at you with a smile. 
    "If you are brave enough."#octopus
    {turtletype="":~turtletype="brave"|}
*   "I'm sure if we get everyone on board, the Mantis Shrimp cannot hurt us all."   #player
    The Octopus looks at you curiously.
    "If you are sure you can convince everyone."    #octopus
-
*   ["I am"!] "I am!" you declare enthusiastically. #player
    -> exit_tank_stage_left
    
= exit_tank_stage_left

    The Octopus pauses briefly and then stares at you. 

    "I think you are making a mistake, but I will help you as I like your determination. It's adorable." #octopus
    
    The Octopus grins widely then points down the hallway.
    
 -  "The tank is down there, good luck."    #octopus
    
*   [Follow the way the Octopus points] #player #action
       -> FishConversation 
    
-> END