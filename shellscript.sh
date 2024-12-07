#!/bin/bash
read -p "Please enter your age in numbers: " age 
if [ "$age" -lt 13 ]; then 
    echo "You are a child"
elif [ "$age" -ge 13 ] && [ "$age" -le 19 ]; then
    echo "You are a teenager"
elif [ "$age" -gt 64 ]; then
    echo "You are a Senior Citizen"
elif [ "$age" -ge 20 ] && [ "$age" -le 63 ]; then
    echo "You are in middle age"
else
    echo "Please enter a valid age"
fi

echo "Script file is updated Sevent time"