VAR octopusplural = "octopi"
VAR turtletype = ""


=== OctopusFirstVisit === 
->Entry
= Entry
# scene: HoldingTank
* [Open your eyes] #left:Turtle #track:KindaHarp #player
    As you open your eyes, you see the oceans around you.
- There are rocks and plants. And another turtle! #right:Turtle
* [Swim towards the rocks] You head for the rocks <> # player # action
* [Swim towards the plants] You head for the plants <> # player # action
* [Swim towards the turtle]  You head for the turtle <> # player # action

- but instead bump painfully into something hard.

As you shake your head, you see your fellow turtle do the same. ->Reflection

= Reflection
* We're so in sync! # player # action
    Perhaps. Or? -> Reflection
* It's my reflection... # player # action

- With a heavy heart, you realise that you've woken up trapped. Locked in a glass box not much bigger than yourself. #right:Turtle

-> ANoise

= ANoise
You hear a noise from the other side of the tank.
* [Investigate]
    You swim over to the origin of the noise. # player # action
    -> InvestigateNoise
* [Hide]
    You hide inside your shell. # player # action
    -> HideFromNoise
    
= InvestigateNoise
    In the corner of the tank, the noise is loudest. It's a scraping sound, and it's coming from the lid!
    
    It starts to move, and a creature appears in the gap.
    
    "Hah, you are an inquisitive one." #octopus
    
    -> OctopusAppears
    
= HideFromNoise
    You take comfort in the quiet and dark.
    
    * ... # player #action
    
    -
    * It occcurs to you that this probably doesn't count as hiding. # player #action
    -
    * . . . # player #action
    
    "Come out little friend, you're safe."  #octopus
    
    You slowly peek out from your home. #player action
    
    -> OctopusAppears

=OctopusAppears
    Before you is an octopus, leaning into the tank. #right:Octopus #track:KindaGuitarAcouLoop
    
    He looks <>
    
    * [Scared] "You look scared." # player
        The Octopus grins.
        "Me? No, little friend. If anything you should be the one afraid, having an uninvited guest barge into your tank. But you needn't worry; I've come to help." #octopus
    * [Hungry] "You look hungry." # player
        The Octopus laughs.
        "Well perhaps a little. But it's not like I can eat you, little friend. With a shell like that, I wouldn't stand a chance."    #octopus
    * [At ease] "You look a lot calmer than I feel."    #player
        The Octopus laughs.
        "You're not wrong, little friend. I don't carry many burdens. But you? You've been trapped. You must be glad I came." #octopus
    - * "What are you doing here?" #player
        The Octopus seems surprised to be asked. He takes a moment.
        "I'm here to free you, of course! To see a turtle trapped like this, I couldn't abide it. So I've come to let you go."  #octopus
    -
    * "Wow, thanks!"[], you exclaim. # player
        
    * "You're freeing me because I'm a turtle?"[] you ask. # player
        "Such a majestic creature, it would be wrong to have you bumping up against glass all your days," he replies.    #octopus
        * * "We are very majestic[."]," you agree, proudly nodding your head. # player
            "Yes, indeed."  #octopus
        * * "But how did you know I was a turtle?"[] you ask. "You only saw me once you opened the tank." # player
            The Octopus seems irritated.
            "A lot of questions for someone who has just been gifted their freedom. I wouldn't want to have to leave you here."   #octopus
            You decide against further probing.
    * "Where are we?"[] you ask. # player
        "An aquarium, if you've ever heard of such a thing. Hundreds, maybe thousands of creatures like you, packed into little boxes so that they can be oggled at."    #octopus
        
        He gestures grandly with one of his tentacles.
        
        "It's no life - but consider yourself one of the lucky ones! I can free you, and you have the land legs to make it back to the sea. The others would give anything for that chance."  #octopus
        * * "That is lucky,"[] you agree. "I'm glad you found me." # player
            The Octopus nods, sagely.
            "Your freedom will be thanks enough."   #octopus
        * * "Like me? You mean like us?" # player
            The Octopus is confused. 
            "Excuse me?"   #octopus
            "You said thousands of creatures like me. But you're trapped as well, aren't you? Creatures like us."    #player
            "Ah well of course," he replies, a little nervous. "But as you can see I'm freer than most. Hard to keep us octopi locked away you know!"  #octopus
            * * *  Say nothing #player #action
            * * * "You know 'octopi' is the wrong plural, right? It's a popular misconception." # player
                "I really don't think it ma-"   #octopus
            * * * * "Plurals ending in 'i' are only for words with Latin roots. But octopus comes from the Greek 'oktṓ' meaning eight, and 'poús' meaning foot. # player
                    The Octopus seems profoundly unamused.
            - - - -
            * * * * "So the correct pluralisation would be octopodes if you're going with the Greek or octopuses if you wished, instead, to conform to standard linguistic style." # player
                    The Octopus does not reply immediately.
                    "The case for your freedom grows stronger by the moment."   #octopus
                    ~ octopusplural = "octopuses"
            
    - The Octopus gestures beyond the tank, to the ground below.
    "There is a drain in the floor here. In case of spillages or water changes in the tanks, it drains straight to the coast. It's latched shut, but we {octopusplural} are awfully dexterous. You'll be free again."    #octopus
    * "I have some questions first." # player
        "That's fine, little turtle," the Octopus replies. "But let's be quick. Time is of the essence."    #octopus
        -> FirstOctoQuestions
    * "I'm ready, let's go!"[] you say, brimming with excitement. # player
        -> FirstExit

=FirstOctoQuestions
    * "Aren't you going to leave too?" # player
        "Ah I wondered if you'd ask, little friend."    #octopus
        He shakes his head.
        "But I have been here a long time, and I don't think I could go back to the outside. No, your freedom is enough." #octopus
        -> FirstOctoQuestions 
    * "Have you freed other creatures before me?" # player
        He pauses to think.
        "I have. But it's been such a long time, I can hardly even rememeber them." #octopus
        He laughs.
        "They seemed so important at the time, too. It's funny what you forget."    #octopus
         -> FirstOctoQuestions
    * "Do we have to leave now?["] This is all very new to me, I'd like to soak it in before I go." # player
        He raises his octo-eyebrows.
        "There aren't many who want to sightsee in their prison."   #octopus
        "But your odd wishes aside, we do have to move quickly. This is a quarantine tank. They're keeping you here until they can move you into the main tank, and if you end up in there... Well, that's the end for you. You'll never be free."  #octopus
        * * "I see. Time is of the essence." # player
            "Exactly."  #octopus
            -> FirstOctoQuestions
        * * "Why can't I escape from the main tank too?"[] you ask. # player
            He scoffs.
            "It's their crown jewel. It's monitored far more closely than these little enclosures. All sorts of systems are in place to keep you there."   #octopus
            * * * "Whoa, that does sound scary. We'd better be quick." # player
                "Exactly, I'm glad you're sensible."    #octopus
            * * * "What kinds of systems?" # player
                "I don't know them all - I don't go in the main tank. But they have fracture monitoring on the glass, sensors above the tank to check if creatures break out, that sort of thing. It's maximum security."    #octopus
                * * * * "I see." # player
                    "It's no good there, little friend." He shakes his head.    #octopus
                * * * * "I bet I could break out. I've already broken out of this tank. I'm an escape turtle!" # player
                    The Octopus rolls his eyes.
                    "You are not an escape turtle, little friend. I broke you out of here. You are a lucky turtle."  #octopus
                    * * * * * He's wrong, I'm an escape turtle. # player # action
                        {turtletype="":~ turtletype = "escape"|}
                    * * * * * He's right, I'm a lucky turtle. # player #action
                        {turtletype="":~ turtletype = "lucky"|}
        - - -> FirstOctoQuestions
            
    * "That's all I wanted to ask. Let's go."    #player
    -> FirstExit
    
=FirstExit
    The Octopus opens the lid further, until the gap large enough for you to leave with him.
    "It is time, little friend. You'll breathe free air again soon."    #octopus
    * [I'm excited]
        The excitement is palpable, this is an adventure! # player #action
    * [I'm afraid]
        The exterior of the tank represents the terrifying unknown, but you know you must proceed. # player #action
    * [I'm suspicious]
        The kindness of this stranger makes you wary, but his help is nonetheless preferable to being stuck in this cage. # player #action
    -
    {turtletype == "escape": You are, indeed, the escapiest of the escape turtles.}
    {turtletype == "lucky": You are, indeed, the luckiest of the lucky turtles.}
* ... #player #action
    -> start_first_drain
= start_first_drain
#scene:AquariumFloor
#left:turtlenobubbles
#right:octopusnobubbles
The Octopus leads you to the drain on the ground below.

As you get closer you see further down the corridor a huge tank filled with beautiful and varied sea life, all swimming around a central artificial coral reef. 
* "Is that the main tank?" # player
- "Yes, now do you see why we must leave quickly." #octopus
* Nod # player # action
    You shuffle closer to the drain, but the thought of all those fish in that huge glass box sends shivers over your shell.
    ** [Suggest saving them] You suggest saving them. #player #action
     -> together_escape
    ** [Ask about them.] "Are they happy here?" you ask. #player
    You look back at the tank curiously. You wonder what they're like, and when they got caught, and if they miss their friends in the sea.
    The Octopus sighs, "Of course they are, now let's go."  #octopus
    ****Follow him #player #action
    -> lonely_escape
    ****Turn back #player #action
    "No way, I'm going to save them all." #player
    -> together_escape
    
* Suggest saving them # player # action
    -> together_escape
    
    
->END
