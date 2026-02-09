#!/bin/bash
# ----------------------------------------------------
# Script: Login Simulation with Attempt Counter 🔐
# Author: Leanzont
#
# ⚠️ SECURITY DISCLAMER:
# This script demonstrates logical flow control (loops/conditions).
# In a real production environment:
# 1. NEVER hardcode passwords inside the script.
# 2. Do not reveal if the username or password was specificially wrong 
#    (this prevents "User Enumeration" attacks).
# ----------------------------------------------------

echo "Enter your credentials. Max 3 attempts."

attempt=1

while [[ $attempt -lt 4 ]]; do
    echo "Attempt Nr $attempt"
    
    echo "Username: "
    read name
    
    echo "Password: "
    read -s pass # -s hides the input for basic security
    echo ""      # Adds a new line after hidden input

    # Logic verification
    if [[ $name == "leandro" ]] && [[ $pass == "lean23" ]]; then
        echo "✅ Access granted."
        break
    
    # Check for max attempts
    elif [[ $attempt -eq 3 ]]; then
        echo "🚫 Access denied. Too many failed attempts."
        break 
        
    # Detailed feedback logic (For educational purpose)
    elif [[ $name != "leandro" ]] && [[ $pass != "lean23" ]]; then
        echo "❌ Incorrect Name and Password. Try again."
        
    elif [[ $name == "leandro" ]]; then
        echo "⚠️ Correct Name, Incorrect Password."
        
    elif [[ $pass == "lean23" ]]; then
        echo "⚠️ Correct Password, Incorrect Name."
    fi

    ((attempt++))

done
