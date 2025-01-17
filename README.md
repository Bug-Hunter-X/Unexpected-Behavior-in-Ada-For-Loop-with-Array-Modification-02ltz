# Ada For Loop Array Modification Bug

This repository demonstrates a subtle bug that can occur in Ada when modifying an array within a `for` loop that iterates over that array.  The issue arises because modifying the array during iteration can lead to unexpected changes in the loop's behavior and possibly skipping elements.

The `bug.ada` file contains the erroneous code. The `bugSolution.ada` file shows the corrected version.  This example showcases the importance of careful array manipulation within loops to prevent runtime errors and unexpected output.

## How to Reproduce

1. Compile `bug.ada` using an Ada compiler (like GNAT).
2. Run the compiled executable.
3. Observe the unexpected output due to the modification of the array within the loop.

## Solution

The solution involves iterating over a copy of the array or using a different loop construct, as demonstrated in `bugSolution.ada`.