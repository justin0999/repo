#!/bin/bash

#Array of funny motivational quotes
quotes=( 
	"Success is like a fart: it only smells good to your own."
	 "Don't worry if plan A doesn't work, there are 25 more letters in the alphabet!"
	 "I told my computer I needed a break, and now it won't stop sending me '404 Not Found' errors."
         "Life is short. Smile while you still have teeth."
         "Why don’t scientists trust atoms? Because they make up everything!"
  	 "You can't have everything. Where would you put it?"
 )

			#  Generate a random index
			 random_index=$(( RANDOM % ${#quotes[@]} ))
			#
			#  Print a random quote
			 echo "💪 Motivational Quote of the Day: ${quotes[$random_index]}"
			#
