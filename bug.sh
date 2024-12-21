#!/bin/bash

# This script attempts to find the largest number in a list,
# but contains a subtle bug related to floating-point comparisons.

numbers=(1.2 3.4 2.1 5.6 4.3)

largest=${numbers[0]}

for i in "${numbers[@]}"; do
  if (( $(echo "$i > $largest" | bc -l) )); then
    largest=$i
  fi
done

echo "Largest number: $largest"