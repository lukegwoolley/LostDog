# The game opens on a missing dog poster
# When you turn around, the dog from the poster is there
# Catch the dog (calling its name? treats? playing fetch)
# Ring the number on the poster
# Get them to come pick their dog up
# Mandatory cheesy reunion

VAR DogCaught = false

=== FindDog ===

-> MissingPoster
= MissingPoster
#A poster of a missing dog. You can look closer and see details
#From here you can get to Dog or Phone Call

= Dog 
#Beyond the poster you can see the dog. Can you tempt him closer?
VAR DogCaught = true

= PhoneCall
#If you don't have the dog, you can call the number on the poster and they'll help you catch him
#If you have the dog, you can ask them to come and collect him

= EmotionalReunion
#The owner(s) come and collect their dog, good feels, you decide to go for a walk to the village green

-> Park