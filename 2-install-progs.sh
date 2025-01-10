#!/bin/bash

for prog in "$@"
do
   sudo apt install ~/Downloads/$prog
done
