# Conditional Execution
Both `true` and `false` are simple Bash commands!

```bash
true
false
```
Whenever a program is executed on the command line, in general two things
happen: either the is command is executed successfully, or there's an error.

If program does not executes successfully, it creates a specific kind of error
which is indicated by the program's exit status. The exit status of a program is
an integer, the exit status of the last program run is stored in the question
mark variable **($?)**. We can take a look at the exit status of the last program
with echo:

```bash
echo $?
```
The exit status of a successful program is 0 and false has an exit status of 1.
Since these programs don’t do much else, you could define true as a program
that always has an exit status of 0 and false as a program that always has an
exit status of 1.

You can combine AND and OR operators in commands, which are evaluated from left
to right:

```bash
true && echo "Program 1 was executed."
false && echo "Program 2 was executed.
```
In a series of programs joined together by AND operators, any programs to the
right of a program that has a non-zero exit status is not executed.

The OR operator (||) follows a similar set of principles. Commands on the right
hand side of || are only executed if the command on the left hand side fails and
therefore has an exit status other than 0. Let’s take a look at how this works:

```bash
echo Athos || echo Porthos && echo Aramis
echo Gaspar && echo Balthasar || echo Melchior
```

# Conditional Expressions

Conditional expressions are always between double brackets (`[[]]`), and they
either use logical flags or logical operators.

| Logical Flag | Meaning  | Usage |
| :----------- | ------- | ----- |
| -gt | Greater Than | `[[ $planets -gt 8 ]]` |
| -ge | Greater Than or Equal To | `[[ $votes -ge 270 ]]` |
| -eq | Equal | `[[ $fingers -eq 10 ]]` |
| -ne | Not Equal | `[[ $pages -ne 0 ]]` |
| -le | Less Than or Equal To | `[[ $candles -le 9 ]]` |
| -lt | Less Than | `[[ $wives -lt 2 ]]` |
| -e | A File Exists | `[[ -e $taxes_2016 ]]` |
| -d | A Directory Exists | `[[ -d $photos ]]` |
| -z | Length of String is Zero | `[[ -z $name ]]` |
| -n | Length of String is Non-Zero | `[[ -n $name ]]` |

In addition to logical flags there are also logical operators.

| Logical Operator | Meaning | Usage |
| :--------------- | ------- | ---- |
| =~ | Matches Regular Expression | `[[ $consonants =~ [aeiou] ]]` |
| = | String Equal To | `[[ $password = "pegasus" ]]` |
| != | String Not Equal To | `[[ $fruit != "banana" ]]` |
| ! | Not | `[[ ! "apple" =~ ^b ]]` |
