#!/bin/bash

# simple-interest.sh
# A simple Bash script to calculate Simple Interest based on user input.
#
# Formula:
#   Simple Interest (SI) = (Principal * Rate * Time) / 100
#   Total Amount (A)     = Principal + SI

echo "===== Simple Interest Calculator ====="

# Take principal amount as input
read -p "Enter Principal amount: " principal

# Take rate of interest as input
read -p "Enter Rate of Interest (annual %): " rate

# Take time period as input
read -p "Enter Time period (in years): " time

# Validate inputs are numeric
if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid numeric values for Principal, Rate, and Time."
    exit 1
fi

# Calculate Simple Interest using bc for floating point math
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display results
echo ""
echo "----- Results -----"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time year(s)"
echo "Simple Interest  : $simple_interest"
echo "Total Amount     : $total_amount"
echo "===================="
