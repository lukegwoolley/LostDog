// Go into the main tank. They explain where you are and to be careful, fish go missing all the time and they don't know why. You tell them you want to break them out and they tell you they want to leave, and have it all worked out including getting out of the tank, but they can't leave the corridor. You explain that the octopus can do that. They don't know who you mean, but they trust you.

VAR fish_trust = 0
VAR tank_plan = 0

=== FishConversation ===
->fish_coversation_start
=fish_coversation_start
# scene: MainTank
# left: turtlenobubbles
# right: WholeTank #track:KindaClarinetLoop
As you approach the tank, the fish gather close to the glass, excitedly watching your progress. There seems to be one member of each fish species you've ever seen, and many more you don't recognise. They swim together forming a kaleidoscopic show of colours and patterns, chattering in one voice made of hundreds.
"Who are you? Welcome! How did you get out? No one has ever escaped before!" #youngshoal
* "The Octopus seems to escape all the time."   #player
    
* "I had help[."]," you say.    #player
    The fish are shocked. "Who helped you? How? The captor is the only one who can move fish."  #youngshoal
    "The Octopus lifted the lid off my tank," you reply. "He was very kind."    #player
    
- "Who is the Octopus? We know everyone in this room, except newcomers like you. Were you caught together?"   #youngshoal
You turn around to point out your new friend who had so nicely shown you a way out. He is no longer in the room. You are confused why he left, but choose to carry on the conversation.

* "You must have seen him.["] Slimy fella, too many legs, he can climb anything and hop between the tanks."     #player
    The fish stare blankly at you, not recognising the creature you're describing.
    "Maybe he can't get into this tank. It's difficult to get in here, but we think there's a way out!"     #youngshoal
    ~tank_plan = 1
    -> MistrustfulFish
    
* "I only arrived yesterday, he seems to have been here much longer."   #player
    "Which aquarium were you transferred from?" the fish ask excitedly.  #youngshoal
    **You are confused. "Aquarium?"   #player
    "Your previous tank, where was it? Melbourne? Sydney? Where did you live before this?"  #youngshoal
     ***"This is my first time in a tank. Yesterday I was in the ocean."   #player
     You feel wistful as you think of your home.
    
    "The Ocean!? Shouldn't you still be in quarantine?!" #pufferfish
    This shout came from a worried looking pufferfish.
    ****"..."
    -> MistrustfulFish

// You must gain the trust of the fish or your only option will be to leave on your own
= MistrustfulFish 

{!The shoal suddenly flickers and the fish turn away from you, but you can still hear them. "Shush! We shouldn't tell strangers! Can we trust turtles? Fish have to stick together!!"}
{fish_trust > 2: -> EnterTank}
The fish {|still} seem mistrustful of you.

    
    * "Are none of you from the ocean?["] I have seen many fish who look just like you out on the reef."   #player
      "A few fish in this tank are from the reef, and all they can talk about is how great the sea is. Most of us were born here though, and we don't reckon this so called 'sea' is all that."    #youngshoal
      "The ocean is great!" you reply. "All your families are out there - clownfish, you all live in the anemonaes, and there is so much room for everyone to swim."   #player
        A few of the fish are excited, and turn back to face you {fish_trust<2: but most of them aren't convinced}.
        ~ fish_trust +=1
        -> MistrustfulFish
    
    * "I refused to leave here without you!["] The Octupus told me how to escape, but I saw that you were still trapped and couldn't just leave."   #player
        The fish look suspicious. "You can leave?"  #youngshoal
        ** "Why should I tell you, if you don't trust me?"  #player
            The shoal seems to pause for a moment, indecisive.
            You sigh, and tell them. "We can leave through the pipe over there. Now we just need to get you out of this tank!" #player
        ** "Yes!["] The drain over there leads back out to the ocean, we just need to remove the grill, which the Octopus can do."    #player
            The shoal seems to pause for a moment, indecisive.
            "So if we can leave the tank, we can escape to the ocean?"  #youngshoal
            *** [Nod]   #player #action
        --
        ~ fish_trust +=1
        -> MistrustfulFish
    
    *"We sea creatures have to stick together!"[] you cry. #player
        The Fish seem unimpressed. "<i>Fish</i> have to stick together. But you hard-shelled lot are a different matter."   #youngshoal
        There's a lot of worry in those words - you wonder what makes them so wary.
        "We're all trapped here. That's got to be a worthy common cause, more so than any other worries you might have between us!" #player
        ~ fish_trust +=1
        -> MistrustfulFish
    
    * Turn away and leave. #player #action
    Why should you go out of your way to help mean fish like these?
        "How rude! I come all this way to talk to you and you don't trust me?" #player
        You turn away from the tank and propel yourself towards the drain, ready to head back to sea. #right:
        -> lonely_escape

= EnterTank
The group of fish have visibly calmed, they seem willing to trust you.
An older fish comes forward out of the crowd. #right:parrotfish
"You said that there's a way out of this room, if we can leave our tank?" #parrotfish   

* "Yes, see this grate?["] It leads to the ocean! My friend the Octopus can help us open it when we escape." #player

- The fish all look at each other with some excitement. This may be more hope than they have felt in years.
"I feel we have much to discuss. Come in."   #parrotfish

* "Can't we keep talking through the glass?"    #player
    "It's too risky, if the Captor comes through here he'll see you!"   #parrotfish
    The mention of the Captor makes the other fish tense. He's clearly not well liked. The older Parrotfish continues talking regardless.

* "How can I get in?"   #player

- "There is an automated feeder on the side of the tank. We've worked out how to open it, and with those flippers of yours you should be able to climb up."    #parrotfish
You make your way towards the feeder, and follow the fish's instructions to clamber past the gate.

*Crawl through feeder #player #action
->into_the_main_tank
