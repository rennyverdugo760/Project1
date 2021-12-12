#!/bin/bash

#Define paths list
paths=('/etc/shadow' '/etc/passwd')
 
#Create for loop that prints out the permissions of each file in our file list
for path in ${paths[@]};
do ls -lah $path 


done    
