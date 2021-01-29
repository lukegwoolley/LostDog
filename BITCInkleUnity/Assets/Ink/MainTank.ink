VAR visit_mantis = false
VAR friends_with_puffer = false
VAR convinced_goby = false
VAR convinced_old_fish = false
VAR convinced_young_fish = false
VAR young_fish = 0

=== into_the_main_tank ===
-> start_tank
= start_tank
#scene:MainTank
#left: turtle
#track:KindaHarp
Diving into the cool waters of the main tank, the sheer amount of life inside the aquarium becomes apparent for the first time.
#right: parrotfish
"Welcome to the tank, brother!" the Parrotfish who you spoke to before greets you. "Please have a look around." #parrotfish

->main_tank_explore

=main_tank_explore
#right:
{!You see many different species swimming around. Many eye you suspiciously and yet the warmth of the community brightens your heart.|The tank is large, but it seems crowded with fish.| The small patch of coral in the centre of the tank reminds you of home.|The fish seem to hang out in groups, chattering as they swim in circles around the tank. -> inside_tank_intro} 

+Swim forward # player # action
+Look around # player # action
+Head to the bottom # player # action

- ->main_tank_explore

= inside_tank_intro
{!The parrotfish swims over to join you.}
//{fish_trust > 2: -> fish_options}
#right:parrotfish
*"Thank you[."] for letting me into your tank - it's much nicer than the little quarantine tank I was in. This place is lovely, but it is too small for so many fish." #player

"We get by okay, but I definitely think that this community would be better off in the wild, where we belong. You might need to help me convince some of these fish, though," he says. #parrotfish

    ** "I'm sure I can manage that." #player

    He smiles. "You're quite a charismatic turtle. I'm sure you'll have no problem." #parrotfish
    ~ turtletype = "charismatic"

    
    ** "Sounds tricky[."], maybe we should leave the creatures who don't want to come?" #player

    He frowns. "We are all family, even if they look and think differently. I believe we should stick together, but maybe you're right. We can't force everyone to go." #parrotfish

    -- ->questions

=== questions
{"Are there any questions I can help you with?" he asks kindly. | "Anything else I can tell you about?" | He smiles and awaits your next question | "Any more questions?"}

*["The plan?"]
    "So what is your plan to get out of this tank?" you ask. #player
    "We have almost everything figured out. You came in through our way out - there is a flap in the lid." #parrotfish
    ** "Why[?"] would the captor leave a hole in the lid?" you ask, puzzled. #player
        The Parrotfish explains that the tank is fed by an automatic system, which lifts the lid at certain times of day.
        "We're now able to open that section whenever we want." #parrotfish
    ** [Nod] You nod, remembering #player #action
    -- "The issue is, the lid is too far from the surface of the water for us to be able to use it. We think that if we can find a way to block the outlet at the bottom of the tank, we can overfill the tank." #parrotfish
        "How will you block it?" #player
        "The goby is a fanstastic digger and can dig up material for us to use, there is just the matter of convincing him." he says gently. #parrotfish
        ***"I will convince him." #player
        *** ["Then we leave through the drain"]  #player
        "Then once you can escape, I'll get the Octopus to remove the grate from the top of the drain, and we can all escape!" #player
       --- You are both excited by the prospect of returning to the sea.
        -> questions

* ["The captor?"] "Will the Captor be a problem?" #player

    "The Captor rarely comes in here, but you should hide if they do." #parrotfish
    **Look for a hiding place # player # action
    There's a promising looking hollow at the base of the coral.
    "What about that hollow?" you ask, gesturing towards it. #player
    "That could work," he says hesitantly, "but the old Wrasse tend to hang out there. You might need to talk to them before diving in." #parrotfish
    
    ***Look for another hiding place # player # action
    You see a cave-like structure at the back of the tank.
    "There's a cave over there, would I fit in there?" #player
    "Ah." You can tell that the Parrotfish is uncomfortable. "The Mantis Shrimp lives there, I wouldn't go that way if I were you." #parrotfish
    You notice that there are no fish swimming in that area of the tank.
    "Right, I'll keep to this side of the tank!" #player
    
    ****Look around again  #player #action
    There's a patch of long seaweed, you're worried that your fins will get tangled if you go in there.
    "I think that's you best bet for now, if the captor comes along," says the Parrotfish, following your gaze. #parrotfish
    You sigh and nod.
    
    -> questions

* "Quarantine?"  #player
    "Why was I in a tiny tank?" You are disappointed not to have been included in this community. #player
    "You were just brought in from the ocean, the captor doesn't know what diseases or parasites you may be carrying." The Parrotfish looks a little wary. #parrotfish
    "Don't worry, I'm fit as a fiddle. I have loads of fish friends on the reef and I've never made them ill!" #player
    "That is good to hear brother, but this is not my area of expertise. Try talking to the Pufferfish, they know all about this kind of thing." #parrotfish
    You nod. "Thanks for the advice, I'll do that." #parrotfish

    -> questions


+ "Can I talk to the other fish?"[] It would be very helpful if we can get everyone on board with the escape plan." #player
    
    "Yes, of course. I've been trying for a long time, but maybe people can be convinced by a fresh face. This tank is yours too now, you can do whatever you would like, brother." #parrotfish
    -> fish_options
    
* {fish_options} "That's all, thank you." #player
    -> fish_options

=== fish_options
#scene:MainTank
#track:KindaHarp
#left:turtle
#right:
Which fish would you like to approach?

    +Speak with the Pufferfish #player #action
    -> talk_to_pufferfish

    +Speak with the Goby at the base of the tank #player #action
    -> talk_to_goby

    +Speak with the old Wrasse #player #action
    -> talk_to_old_ones
    
    +Speak with the young fish [who are eagerly watching you] #player #action
    -> talk_to_young_ones
    
    +Speak with the Parrotfish #player #action
    -> questions
    
    +Seek out the Mantis shrimp #player #action
    -> convince_mantis
    
    *{TimeToEscape==false}None of them, there's no place for me with this lot. #player #action
    ->dont_belong
    
    +{TimeToEscape==false}None of them, I've done everything I want. #player #action
    -> leave_tank_to_octo

    *{TimeToEscape==true}All of them. It's time. #player #action
    -> start_the_escape

=== dont_belong
#right:parrotfish
"Thank you for your kindness, but I've thought it through. I can't remain with you - I should be in quarantine. You have a good thing going, and I'll just ruin it." #player
"Are you sure, brother? You said before that sea creatures should stick together and I think you were right." #parrotfish
**"Yes, I'm sure." #player
#right:
    You turn away and leave with a heavy heart. It is for their own good.
    -> lonely_escape
* * "I did say that..." #player
    "Doubt comes to all of us" the Parrotfish reassures you "but your arrival here is exactly the break we've been waiting for." #parrotfish
    "I suppose if we're all in the ocean tomorrow, it won't matter if I have been quarantined or not! Let us escape together." #player
    The Parrotfish beams at you.
    -> leave_tank_to_octo

*["I must arrange the escape."] #player
    "Brother Parrotfish, thank you for your hospitality." #player
-> leave_tank_to_octo

===leave_tank_to_octo
    "I have to return to my tank to confer with the octopus, so that we are ready to remove the grate when your tank is flooded. I'll come back tomorrow!" #player
    "Safe travels, friend. We'll be here when you return - it's not like we can go anywhere without you!" #parrotfish
    #right:
    You take another look around the artificial reef and wave goodbye to your new friends. The thought of escape is even more exciting now you are helping these lovely creatures! 
    You swim up to the hatch and clamber out and into the corridor.
    -> return_to_octopus

=== start_the_escape
#scene: MainTank
#left: turtle
#right:
Let's make sure we have everything in place.
We need to open up the tank...
* The Parrotfish can do that! #player #action
-
And then we need to raise the water level so the fish can swim out.
* {convinced_goby} The Goby will help us! #player #action
* {!convinced_goby} That's true. I need to work that out. #player #action
    Maybe one of the fish can help.
    * * Let's go. #player #action
        -> fish_options
-
And then we'll be outside the tank. All that remains is to make it to the sea.
* The Octopus will open the latch! #player #action
    And then we'll be free again!
-
* Gather the fish #player #action
    You spread the word, and the fish of the tank gather around you.
    "I know I've only arrived recently, but we are united in a common struggle." #player
    "Thanks to your ingenuity" you say, looking at the Parrotfish "and with a little outside assistance, we will all be in the ocean by tomorrow." #player
    The fish are nervous, but excited.
    #right:wholetank
    -> announce_fish

=announce_fish
    * {visit_mantis} "Are you ready to venture out, Pufferfish?"[] you ask. #player
        She takes a moment. "Yes, I am" she says. "It will be difficult to start again, but we all deserve a chance to be free." #pufferfish #right:pufferdeflated
        {convinced_mantis:  "All of us." she repeats, casting a look at the Mantis Shrimp.|All of us." she repeats, casting a regretful look back at the Mantis Shrimp's corner of the tank.} #pufferfish
    * {convinced_young_fish} "What will you do when you're out on the wide ocean, young'uns?"[] you ask. #player
        "We're going to see everything!" #youngshoal #right:youngshoal
        "Everything!"   #youngshoal
        "Go everywhere!"    #youngshoal
        "WEEEEE!"   #youngshoal
    * {convinced_old_fish} "Your fry will have the chance to live their lives in open waters. You must be excited." #player
        The shoal of older fish turn and murmer to each other. #oldshoal #right:oldshoal
        "Yes, it is exciting." they agree. "The ocean should be afraid of them, not the other way around!" #oldshoal
    * "Goby, are you prepared do to your part?" #player
        "You bet!" #Goby #right:goby
        "You won't believe how fast I can work."    #goby
    * {convinced_mantis} Acknowledge the Mantis Shrimp #player #action
        The Mantis Shrimp is some way away from the group. #right:mantisshiny
        You nod his way.
        He nods back.
    * "Everyone ready?" #player
        -> announcedfish
    
    - ->announce_fish
= announcedfish
#right:wholetank
    With a deep breath, you and the fish{convinced_mantis: - along with a grouchy crustacean -} set to work.
    The Parrotfish gets the feeder opened up, and Goby sets to work on the outlet.
    All that remains is to wait.
    * Wait #player #action
        -> great_betrayal
