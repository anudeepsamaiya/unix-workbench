The bash programming language can do very basic arithmetic.


`#!/usr/bin/env bash`

`# File math.sh`


`expr 5 + 2`

`expr 5 - 2`

`expr 5 \* 2`

`expr 5 / 2`


The `expr` command can be used to evaluate Bash expressions. Notice that when
doing multiplication you need to escape the star character, otherwise bash
thinks you are creating a regular expression!.

To do more complex math, combining `echo` and the bench calculator program `bc`
proves quite useful.

`echo "22/7" | bc -l`

`echo "4.2 * 9.15" | bc -l`

`echo "(6.5 / 0.5) +  (6 + 2.2)" | bc -l `
