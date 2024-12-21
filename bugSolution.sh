#!/bin/bash

# This script correctly finds the largest number in a list,
# addressing the floating-point comparison issue.

numbers=(1.2 3.4 2.1 5.6 4.3)

# Sort the numbers in descending order
sorted_numbers=($(echo "${numbers[@]}" | tr ' ' '\n' | sort -nr | tr '\n' ' '))

largest=${sorted_numbers[0]}

echo "Largest number: $largest"