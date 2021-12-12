#!/bin/bash

# Create Variables
states=('Nebraska' 'California' 'Texas' 'Hawaii' 'Washington')

# Create a loop that looks for Hawaii
for s in ${states[@]};
do 
    if [$s == 'Hawaii'];
    then 		
        echo 'Hawaii is the best!'
    else	  
        echo "I'm not a fan of Hawaii"
    fi
done
