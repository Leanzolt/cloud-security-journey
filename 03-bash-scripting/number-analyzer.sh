#!/bin/bash
# ----------------------------------------------------
# Script: Logic Gate / Number Analyzer 🔢
# Description: Demonstrates nested IF/ELIF conditions to categorize numbers.
# ----------------------------------------------------

echo "Enter a number to analyze: "
read num

if [[ $num -eq 0 ]]; then
    echo "Result: It is zero."

# Check for Even numbers
elif [[ $((num % 2)) -eq 0 ]] && [[ $num -lt 0 ]]; then
    echo "Result: It is even and negative."
elif [[ $((num % 2)) -eq 0 ]] && [[ $num -gt 0 ]]; then
    echo "Result: It is even and positive."

# Check for Odd numbers
elif [[ $((num % 2)) -ne 0 ]] && [[ $num -lt 0 ]]; then
    echo "Result: It is odd and negative."
elif [[ $((num % 2)) -ne 0 ]] && [[ $num -gt 0 ]]; then
    echo "Result: It is odd and positive."
fi
