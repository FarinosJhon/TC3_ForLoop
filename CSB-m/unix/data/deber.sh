#!/bin/bash

for file in n11.txt
do
               head -n 5 $file | cut -d " " -f 1 | wc >>deber2.txt
done 
