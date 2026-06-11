#!/bin/bash
# simple-interest.sh
# A simple interest calculator.
# Simple Interest = (Principal * Rate * Time) / 100

echo "Simple Interest Calculator"
echo "--------------------------"

# Read the principal amount from the user
read -p "Enter the principal amount: " principal

# Read the rate of interest from the user
read -p "Enter the rate of interest (%): " rate

# Read the time period from the user
read -p "Enter the time period (years): " time

# Calculate the simple interest using bc for floating point math
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display the result
echo "--------------------------"
echo "The simple interest is: $interest"
