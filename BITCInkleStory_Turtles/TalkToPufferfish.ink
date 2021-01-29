// File for the germaphobe PufferFish interaction.
// This should be reachable from MainTank.ink

// You approach the pufferfish cave / home / ?
// They hide behind a rock, refuse to see you. They could get infected!
=== talk_to_pufferfish
-> talk_to_pufferfish_start
=talk_to_pufferfish_start
#scene: MainTank
#right:PufferDeflated
#left: turtle
#track:KindaHarp
{friends_with_puffer : -> pufferfish_freindly_converse}
As you near the Pufferfish, she ducks behind a rock, eyeing you warily.

-> pufferfish_converse_loop

= pufferfish_converse_loop

* Approach the Pufferfish #player #action
    "Hey! Get away from me, germ bag!" #pufferfish
    The Pufferfish looks panicked, takes a deep breath ...
    * * Uh-oh #player #action
    - -
    ... and suddenly blows up like a big balloon. You take a hasty flap back. #right:PufferInflated
    "Idiot! You could kill us all!"    #pufferfish
    **... #player #action
    You're not sure that she wants to keep talking.
    
    ***Talk to someone else #player #action
        #right:
        You decide it's best not to bother the Pufferfish anymore. You head back and talk to another fish #left:
        ->fish_options
        
    *** Keep your distance #player #action
        You decide to try to talk to the Pufferfish again, keeping your distance this time.
        "It's okay, it's okay...I'll stay back, I just want to chat." #player
        This seems to put the Pufferfish at ease, and she slowly deflates back to normal size.
        #right:PufferDeflated
        -> pufferfish_converse_loop

* "Why are you so scared of me?" #player
    -> pufferfish_converse_loop_2

* -> pufferfish_converse_loop_2
    
= pufferfish_converse_loop_2
{!"You didn't spend enough time in quarantine! You could infect a load of other fish, some could even die. Our little world is balanced on a knife edge and you have the audacity to barge in with who-knows-what parasites in tow."} #pufferfish
*  "Why do you think it's balanced on a knife edge? You all look comfortable to me." #player
    The Puffer shakes her head.
    "Only at great cost. Most nights fish vanish from the tank, never to be seen again. Do you know why?" #pufferfish
    * * "No, why?" # player
    * * "They broke out!{turtletype == "escape": They're natural-born escape artists, like me.}" # player
        "No, you fool." #pufferfish
    * * "The Mantis Shrimp got them?" # player
        "The Mantis Shrimp? What? No." #pufferfish
    - - "It's because they're infected. Diseased. The Captor knows how delicate our ecosystem is so at the first sign of illness... They get removed." # pufferfish

    * * "The Parrotfish told me the disappearances were the Mantis Shrimp's doing."   #player
        The Pufferfish looks down, saddened.
        "We've all lost fish close to us, and we want something to blame. Something concrete." She sighs. #pufferfish
        "But it's not him, he's a good guy at heart. Unfortunately a Shrimp with a killer punch is easier to lash out at than the terrifying reality of our precarious health." # pufferfish
        ~ friends_with_puffer = true //skip this loop in future
        -> pufferfish_converse_loop_3

* -> pufferfish_converse_loop_3

= pufferfish_converse_loop_3
* "How does quarantine work?"   #player
    "The Captor keeps new fish that come from the ocean in a separate tank for a while in order to make sure they don't bring in any parasites or diseases! It's a necessary part of keeping this tank safe, which you have chosen to neglect."    #pufferfish
    * * "You sound almost like you admire The Captor."    #player

        "Of course not!" she says, outraged. "They're the reason we're all trapped here. But as long as we are, I would rather be healthy. And that is one thing they deserves credit for."    #pufferfish
        
    * * "I see. Sorry." #player
        She huffs. Her good nature wants to accept your apology, but she knows she's right - You are a danger.
* "The other fish aren't scared of me[."], aren't they afraid of infection too?" #player
    "That's because they blame the Mantis Shrimp for the disappearing fish, they don't realise how truly great the risk of infection is." # pufferfish
    "It's like they've never even spoken to him, he's honestly not so bad. But he's spent so long being spurned that he's defensive right off the bat." #pufferfish
    She glowers at you. "If they knew the threat you posed, you'd have been thrown out the way you came in. You're probably carrying a reefload of lethal friends under that shell of yours right now. We're doomed." #pufferfish

* "We didn't have quarantine in the ocean!" #player
    She sighs. "Ah, how I miss those days! See, the tank is so small and sterile that even the tiniest disruption can put us all in danger. We have to be more careful in here than we would have to be out there." #pufferfish
    
    * * "So if we found a way to escape[..."], would you want to come with us?"  #player
    
        The Pufferfish pauses for a second. To your suprise she seems to be taking your suggestion seriously.
        "Yes," she says, tentatively. "I think I would. It would become awfully lonely in here if everyone else left without me..." #pufferfish
        "But the Mantis Shrimp! We can't abandon him! The others won't like it, but please try and convince him to come too. If he knows I sent you, he might just listen" #pufferfish
        
        ~ visit_mantis = true  // allow go to mantis shrimp from main tank
        * * * "No shrimp left behind." #player
            "Quite right." #pufferfish
+ [Leave] "I'll leave you be." #player
    For the time being, you part ways with the Pufferfish. You imagine she'll appreciate you keeping your distance. #left: #right:
    -> fish_options
- -> pufferfish_converse_loop_3

= pufferfish_freindly_converse
You near the Pufferfish keeping a respectful distance.
"Just there's close enough thank you!"#pufferfish
-> pufferfish_converse_loop_3
