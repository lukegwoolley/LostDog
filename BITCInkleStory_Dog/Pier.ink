# The fisherman is here (wearing a bright yellow raincoat which  is "a flash of familiar yellow" if you've seen the dog)
# He's worried because his dog jumped off the boat and he doesn't know where the dog is 
# and he can't leave his boat/catch to go looking for the dog
# He tells you the name of the dog
# When you return the dog, he gives you a fish you can use to tempt the cat down from the tree (if you don't already have a fish)

VAR FishermanMet = false

=== Pier ===

You stroll out along the pier which is empty apart from a fisherman in a yellow raincoat stood by a boat filled with fish. Is he trying to get your attention?

    *[Go to the fisherman] ->Fisherman
    *[Go back to the park] You don't fancy meeting any other new people today. ->Park
    {GotSausage} *Time to reunite owner and pet. ->GiveSausage

=Fisherman

The fisherman waves as you step closer to him. ~FishermanMet = True

"Sorry to bother you, but can you help me? I can't leave my boat till my boss has been round to collect the catch, but my dog jumped off the boat whilst I was out there! He's a strong swimmer, I know he's made it back to shore, but I don't want him getting lost out there."

    #if dog seen
    {SausageFound} *I saw a dog along the beach, in a yellow raincoat? I couldn't get him to move though. [] "That'll be him! I knew he'd make it back to the beach at the very least!" ->SausageName
    *Back to shore? [] "He'll have made it to the beach for sure, and he won't be hard to miss, got a yellow raincoat on just like mine!"  ->SausageName

=SausageName

"He's a bit of a stubborn one though, he'll only come if you call his name. His name's Bandit." ~SausageNameKnown
"I'd be so grateful if you can bring him back to me."

You smile at the fisherman as you turn to go back towards the green to look for his missing dog. ->Park

=GiveSausage



-> Park