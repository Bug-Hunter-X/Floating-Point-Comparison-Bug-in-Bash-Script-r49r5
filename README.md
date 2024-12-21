# Bash Floating-Point Comparison Bug

This repository demonstrates a subtle bug in a bash script that involves comparing floating-point numbers.  The script attempts to find the largest number in an array, but due to the limitations of floating-point precision and the way bash handles comparisons, it may produce incorrect results.

The `bug.sh` file contains the buggy script. The `bugSolution.sh` file provides a corrected version that uses a more robust approach to handle floating-point comparisons.

## Bug Description
The original script uses `bc` for floating-point comparisons. However, floating-point numbers are inherently imprecise, and small rounding errors can lead to unexpected comparisons.

## Solution
The solution involves using `bc` with sufficient precision or employing an alternative approach that avoids direct floating-point comparisons, such as sorting the numbers.