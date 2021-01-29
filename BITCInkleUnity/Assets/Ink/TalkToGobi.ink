// File for the Gobi interaction.
// This should be reachable from MainTank.ink
=== talk_to_goby
-> talk_to_goby_start
=talk_to_goby_start
#scene: MainTank
#left: turtle
#right: goby
#track:KindaHarp
{convinced_goby: -> already_convinced}
The Goby fish digs himself down into the sand a little more{! when he sees you come near. He doesn't seem to like strangers}.
*"Hi there!" [] You greet him with warmth. #player
    "H.. hello? Who are you?"   #goby
    -> goby_loop
    
= goby_loop    
    * "I'm a friend! Parrotfish sent me to talk to you"    #player
    
   "Oh, okay... I'm not sure about this." #goby
    -> goby_loop
    
    * [Dig yourself a place to sit nearby] #player #action

    As you start to dig, you can feel him getting excited.
    
    "Y..you like to dig?!"  #goby
    
    "Yeah! Although I usually do it in the dry, under water it's much more difficult"  #turtle
    
    "Well I'm a master of digging under water, I can move a lot of sand very quickly!"   #goby
    
    You finally manage to complete your little hole to sit in. Digging underwater was very difficult indeed. You settle down and turn towards the Goby fish.
    
    "Do you mind if I ask you a few questions?" #turtle
    
    "Oh, okay! What did you want to talk about?"    #goby
    
    -> goby_questions

= goby_questions 

    *"Did you come from the ocean?"    #turtle

    "Oh no, I was born here! The ocean sounds scary! So many big hungry fish... And other Captors!"     #goby
    
    "But also lots of hiding holes, and really pretty reefs, and lots and lots of sand!"  #turtle
    
    "Really? Even more sand than here?" #goby
    
    **"Yes! There is loads for you to dig into and explore. You know...I know another goby who'd love to dig with you."     #player 
    
    "I've never met another goby before, what if they don't like me?"   #goby
    
    "Well I like you goby so I think they will like you too. Besides, it will be nice for you to have a more professional digger than me with you!"   #player
    
    You can see Goby relaxing more and he swims towards you. 
    
    "Don't worry Turtle, if you want I can teach you how to dig like me."   #goby
    
    -> escape_plan_goby
    
    ** "Yeah there is! So, why do you love digging so much goby?"   #player 

    "Digging is...wait, will you laugh at me?"  #Goby
    
    You dig down a little more into the sand to show him you like digging too. 
    
    "Only if you'll laugh at me for liking digging too!"    #player
    
    "Okay then, I like digging because it's the only place I feel safe. No one ever finds me when I dig down here"  #goby

    "I can't wait to show you the places you can go in the ocean. It's beautiful with so many more places for hiding and digging."   #player
    -> escape_plan_goby
    
= escape_plan_goby

    * "Have you heard of the escape plan?"  #player

    "I heard Parrotfish talking about it a while ago. I'm not sure that it need me. What about the bigger and stronger fish?" #goby

    **"Of course we need you!"  #player
    
    The Goby gazes up from his small freshly dug hole. He is worried but interested.
    
    -- "Well if you need me... okay, what's the plan?"  #goby
    
    ***"I need you to dig["] lots of the aquarium floor into a big pile over the outlet, so that it jams." #player
        "Why?" #goby
        "We need to raise the water level in the tank. If you can block the outlet with your amazing digging skills, then the water won't be able to drain away and we can all leave through the top!" #player
        "If it's lots of digging you need, I am sure I can manage." #goby
        "I knew you could do it." #player
    
    ****You swim back to the others, leaving an excited Goby digging his little heart out. #player #action  
    ~ convinced_goby = true
    -> fish_options
        
= already_convinced
The Goby looks up as you approach.
"I can't wait to get out! I better keep practicing though..." #goby
He goes back to digging in the sand, making a big pile.
    + [Leave them to it.]
    You decide to leave them to it.
    -> fish_options