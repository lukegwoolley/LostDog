VAR mantis_hatch_explained = false
VAR mantis_overflow_explained = false

=== convince_mantis ===
->approach
= approach
#scene:MainTankMantis
#track:KindaGuzheng
#left:turtle
You approach the old Mantis Shrimp's cave tentatively. 
This part of the tank is eerily quiet and still.
As you near the entrance you hear the rustle of movement inside.
+ ["Excuse me..."] "E-e-excuse.. m-me" #player
    Your nerves are getting to you.
+ "Mantis Shrimp! I've come to talk to you." #player
-
#right:mantis
The Mantis Shrimp appears, still half-hidden within the shade of his cave.
{convinced_mantis: -> already_convinced_mantis}
{mantis_justify_plan: ->mantis_justify_plan}
"What do you want?" {!he barks.} #mantis
-> first_talk
        
= first_talk
{&|The Mantis Shrimp looks impatient|He shuffles back into the darkness of his home. This conversation is over. ->fish_options} #mantis
+ "Sorry to bother you["], I was just wondering-" #player
    {&"Quit yapping and leave me alone."|"Leave, kid."|"I don't want to talk, go away."} #mantis
    -> first_talk
+ "We have a plan, and we want you to be a part of it." #player
    "Leave me alone!" #mantis
    He rears up, arms poised to lash out.
    ++ Time to run away! #player #action
        As you scamper back to the middle of the tank, you hear the Mantis Shrimp retreat into his cave.
        -> fish_options
    ++ Hold your ground. #player #action
        You know this guy's got a fearsome punch, and you're no-one's idea of a fighter...
        
        +++ Hide in your shell and brace #player #action
        You tuck your head inside your shell, and just in time. The Mantis Shrimp's claw lets out a deafening crack, and you're sent spinning away.
        
        But it's not as bad as you expected. Maybe he's lost his touch?
        
        "That was a warning shot." #mantis
        "Leave. Now." #mantis
        You don't know if you could take another shot at full force.
        ---
        
        +++ Flee #player #action
            You decide not to test the Mantis Shrimp's strength, and make your way back to the middle of the tank.
                -> fish_options
            
        *** [{visit_mantis: Tell him the Pufferfish sent you}]
            "The Pufferfish wanted me to talk to you!" you shout, your echo ringing back in your shell. #player
            He isn't going to hear you while you're hunkered down in here.
            **** Come out of your shell and tell him #player #action
                You emerge. The Mantis Shrimp doesn't strike.
                "The Pufferfish wanted me to talk to you." you say, nervously. #player
                The Mantis Shrimp relaxes and the terrifying tension in his claws disappears.
                "That old fool. What's he doing sending you my way?" he asks. #mantis
                ***** "He knows the other fish have the wrong idea about you. He told me the truth." #player
                    The Mantis Shrimp scoffs. "And what truth is that?" #mantis
                    "That you're not hurting anyone. That the disappearances are due to disease and I have nothing to be afraid of coming here." #player
                    Despite your words, you still feel fairly nervous.
                    "He's a paranoid old balloon, but he's right about one thing. I'm not going to hurt anyone." #mantis
                ***** "We're escaping, and he wants you to come with us." #mantis
                    The Mantis Shrimp scoffs. "Sentimental balloon."
            ----
            "Well you're here now, kid. Might as well get into it." #mantis
            -> ShrimpEmerge


= ShrimpEmerge
The Mantis Shrimp steps out of his cave, and you are dazzled by an almighty light.
* Let your eyes adjust #player #action
-
The Mantis Shrimp stands before you, a dazzling display of colours. # right:mantisshiny

* "You're so colourful!" you exclaim. #player
    "Shut up kid, you didn't come here to compliment my shell." #mantis
    He's trying to seem impatient, but you can tell he's actually very happy you mentioned it. 
* Don't mention it. #player #action
- -> questions1

= questions1

* "We have a plan to get out[."]," you say, brimming with hope. #player
    The Mantis rolls his eyes. "I've heard this all before, you must be new." #mantis
-
* "I'm serious!["] It's simple really, there's a grate on the floor that leads right to the ocean!" #player
    "Not in this tank there isn't." #mantis
-
* "But there is out there!"[] You gesture to the floor on the other side of the glass. #player
    "That must be lovely for all the land creatures on the floor. Why should I care?" #mantis
-
* [Explain the plan]"All we need to do is open the feeding hatch, and overflow the tank." #player
    -> mantis_justify_plan

=mantis_justify_plan
#right: mantisshiny
    {"How on earth do you plan to achieve any of that." he asks.|"So just how is this great plan of yours going to work?" asks the Mantis Shrimp} #mantis
    "The Parrotfish knows how to get the feeding hatch open, and as for overflowing the tank..." #player
    * {convinced_goby} "The Goby can block the tank's outlet, and the water level will rise up!" #player
        The Mantis Shrimp looks at you, disbelieving. "That... That might just work". #mantis
        "It will work! We're getting out." #player
        -> convince_the_mantis
    + [I don't have a plan for that...]"Well we haven't figured that out just yet. But we will!" #player
        The Mantis Shrimp scoffs. "Like I thought. Just a load of half baked ideas. Leave me alone." #mantis
        He retreats back into his cave. You'll have to come up with something more impressive #right:
            + + Go back to the rest of the fish. #player #action
                -> fish_options
            
=convince_the_mantis
"Alright kiddo. Maybe it's my age talking, but this doesn't sound completely insane." #mantis
* {turtletype=="escape"}"Of course it's not insane[."], I'm a seasoned escape turtle" #player
    The Mantis Shrimp laughs.
    "I guess so." #mantis
    -> convince_the_mantis
* "So you'll come with us?"[] you ask, excitedly. #player
    He takes a moment.
-
"How are you going to get the drain open?" he asks. #mantis
* "The Octopus has agreed to help us!"[] you reply. "He's super dexterous, he can open it." #player
-
The Mantis Shrimp seems taken aback.
"I see." #mantis
"I'll come with you... In case of trouble." #mantis
~convinced_mantis = true
You wonder what that means. Maybe he's just being dramatic.
* Head back to the other fish. #player #action
    -> fish_options
        
=already_convinced_mantis
#right: mantisshiny
"Kid, you've already got me on board." The Mantis Shrimp seems a little irritated. "I'm glad you convinced me, but that doesn't mean I want to chat. Let's get this show on the road." #mantis
+ ["Okay!"] #player
 The Mantis Shrimp retreats back into his cave. #right:
-
+ [Go back to the rest of the fish.] #player #action
    ->fish_options

