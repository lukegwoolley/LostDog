VAR h_and_s = 0

=== return_to_octopus
-> return_to_octopus_start
= return_to_octopus_start
#scene: HoldingTank
#track:KindaBassLoop
#right:turtle
#left:turtle
//TODO add condition on {im}patiently depending on turtle personality
You sit patiently in the quarantine tank, waiting for the Octopus to return.
You amuse yourself by playing hide-and-seek with your reflection.

-> hide_and_seek
= hide_and_seek

+[Hide] #player #action
    You duck behind a {rock|plant|coral} and hide. You wait a while for your reflection to find you, but he doesn't show up...
    #right:
    #left:

+[Seek] #player #action
    You excitedly search for your reflection. He hasn't hidden very well...
    #right:turtle
    #left:turtle
    
-   ~ h_and_s = h_and_s + 1
{h_and_s >3:
    ->octopus_returns
   - else:
    -> hide_and_seek
}
    
=octopus_returns
Finally, you hear the sound of the Octopus on the lid above your head. #track:KindaGuitarAcouLoop
* [Wait]   #player #action
You wait.
#right:octopus
The Octopus appears above your little tank, tentacles draped lazily into the water.
"How's it going, little friend?"  #octopus
* "Hey! I did it!" #player
"Hang on a sec-" #octopus
The lid lifts up and the Octopus looms over the tiny tank.
"What's going on, little friend?"  #octopus
- ->octo_conversation

=octo_conversation
* "I did it! I got everyone on board!" #player
The Octopus looks skeptical.
    ** "No really["], I did it! {convinced_mantis: Even the Mantis Shrimp! He's not so scary really.}"  #player
    His features are hard to read, but you can tell he's surprised.
    ** "So when do we make our great escape?"   #player
    -- "Let's slow down, little turtle. There are things you may not have considered." #octopus
    -> octopus_questions    
* "The main tank is amazing[!"], why didn't you tell me?!"  #player
"Sure, I guess it's got its own charm..."  #octopus
He pauses for a moment.
...
"But it's nothing compared to the ocean, I'm sure you're dying to get back. I was just trying to help."    #octopus
    ***"I guess you're right[..."], I'm glad we'll all be escaping soon. I miss the ocean so much."   #player
    ***[Talk about the fish you met] "Exactly! Some of those fish have never even seen the ocean before, can you believe it?! Poor things, I can't wait to show them all how beautiful it is!"   #player
        {convinced_goby: "The Goby is so excited to have more room to dig, and other friends who like burrowing!"} #player
        {convinced_young_fish: "There are some young angel fish who can't wait to see the big wide world."} #player
    *** [Talk about the disappearing fish] "They will be so much safer in the ocean! It's very worrying, hearing about the disappearances. And everyone seems to have a different theory about why they happen."  #player
    --- "That is very interesting, little friend. I am sure you have their best interests at heart." #octopus
    -> octopus_questions

=octopus_questions
He tilts his head a little to the side as though in deep thought, and then asks, 
"Are you sure you want to do this?" #octopus

* "Escape? Of course I do!" #player
He rolls his beady eyes at you. 
"Of course you want to escape, I mean do you want to escape like this? <> #octopus
* "What do you mean?"   #player
"<>
- This plan of yours to free the whole tank, it's brave, you've got heart...but it's risky, my friend. I'd hate to see you get hurt."    #octopus
* "How risky?"  #player
    "Rather, little one. And as you said, the large tank really is their home, it's all they've ever known. Would they thrive in the ocean, without the skills you learned growing up?" he says softly.   #octopus
    You stop and think for a moment. Is the aquarium so bad? Aren't they happy over there, it's their home...right? And you miss the ocean so deeply, like a physical ache. You realise it has a name, you're homesick.
    ** "I just want to go home."    #player
        "Of course you do, it's okay. The whole ocean is out there waiting for you, it's your home. And this is their home. That's just how it is."  #player
        *** Agree #player #action
            They seem happy enough here, and if the plan fails then some of them might not make it...
            "Let's go, without them" you tell the Octopus.    #player
            "It's for their own good. You have made a sensible choice," he replies,   #octopus
            and he guides you out of your tank and towards your escape.
            ****... #player
            -> lonely_escape
        *** Disagree #player #action
            "This isn't home, this is a cage!" you cry out. #player
            As homesick as you may feel, you know that all sea creatures have a longing for the ocean, you don't want to leave them behind.
            -> hard_sell
    ** "I can't just leave them trapped here."  #player
    -> hard_sell
    
    
* "I don't care, I'm going to save my friends!" #player
->hard_sell


=hard_sell
He sighs, and starts to play with the gravel at the bottom of your tank absent-mindedly.
  "Oh, little one, if any stage of this little escape goes wrong we'll all be goners. I didn't tell you this before because I didn't want to scare you, but...well I've been here a long time, and I've seen a lot of sea creatures come and go."    #octopus
    * ... #player #action
"Let's just say, you're not the first to try to escape, and I'd hate for things to end up as...messily...as they have done before..." #octopus
** ["Messily?"] "M-messily? W-w-what do you mean?"  #player
You feel a cold chill as the weight of his words settle on you.
** ... #player #action
- "It's tragic really, I try not to think about it, but I'll never be able to forget their little faces, suffocating on the dry aquarium floor. There's so much that could go wrong."  #octopus
* ... #player #action
- "You could kill them, you know?"  #octopus
* [Leave without them]
    "You're right..." you tell the Octopus, "They're better off here, in the aquarium, and I'm better off out there." #player
    The Octopus nods along with you.
    "Of course, if that's what you want," he says, #octopus
    guiding you out of the tank towards your escape.
    **...   #player
    -> lonely_escape
* [Escape together]
    "No!"   #player
    The thought of leaving them all behind in this prison where fish go missing scares you more than the alternative. They're your friends!
    The Octopus stares you down, is he...angry?
    **... #player #action
    "You're risking it all over a few pesky fish?!" #octopus
    He spits venomously, leering further into your tank. He sees a flash of fear across your face and instantly withdraws, and sighs.
    "I'm sorry, kiddo, I'm just scared for you. I only want what's best for you."   #octopus
    *** "Maybe you're right[."], you've been around so much longer than I have, if you think it's too risky you're probably right...let's go." #player
    "If that's what you want, little one, then let's go" he says softly,    #octopus
    and guides you out of your tank towards your escape.
    ****... #player
    -> lonely_escape
    *** "It will be okay[."], I promise I'll be careful. I know you're scared for me, but I have to do this. I have to save them."    #player
    The Octopus looks at you for a moment. He looks defeated.
    "Well, if you insist, then I'll do whatever I can to help you. You don't have to do this alone."    #octopus
****... #player #action
-> main_tank_again
    