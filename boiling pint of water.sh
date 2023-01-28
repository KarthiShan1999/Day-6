#!/bin/bash

read -p "Enter 'C' to convert from Celsius to Fahrenheit or 'F' to convert from Fahrenheit to Celsius: " conversion_selection

if [ "$conversion_selection" == "C" ]; then
    read -p "Enter the temperature in degrees Celsius: " degC
    if (( $(echo "$degC < 0 || $degC > 100" | bc -l) )); then
        echo "Please enter a temperature within the freezing and boiling points of water (0-100 degrees Celsius)."
    else
        degF=$(echo "scale=2; ($degC * 9/5) + 32" | bc -l)
        echo "The temperature in degrees Fahrenheit is: $degF"
    fi
elif [ "$conversion_selection" == "F" ]; then
    read -p "Enter the temperature in degrees Fahrenheit: " degF
    if (( $(echo "$degF < 32 || $degF > 212" | bc -l) )); then
        echo "Please enter a temperature within the freezing and boiling points of water (32-212 degrees Fahrenheit)."
    else
        degC=$(echo "scale=2; ($degF - 32) * 5/9" | bc -l)
        echo "The temperature in degrees Celsius is: $degC"
    fi
else
    echo "Invalid selection. Please enter 'C' or 'F'."
fi
