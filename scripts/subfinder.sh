#!/bin/bash
echo -n "Enter the domain: " 
read domain	
echo "Starting..." 
subfinder -d $domain -o subfinder.txt
echo "Check subfinder_out.txt" 
