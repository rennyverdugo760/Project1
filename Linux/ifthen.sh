#!/bin/bash

output=$HOME/research/sys_info.txt

if [ ! -d $HOME/research ]
then mkdir $HOME/research

fi

if [ -f $output ]
then > $output

fi

