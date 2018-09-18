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


# if..elif..else..fi statements

Let's write a small program with an if statement:

```bash
#!/usr/bin/env bash
# File: simpleif.sh

echo "Start program"

if [[ $1 -eq 4 ]]
then
  echo "You entered $1"
fi

echo "End program"
```
You should also know that you can combine conditional execution,
conditional expressions, and IF/ELIF/ELSE statements. The conditional
execution operators AND (&&) and OR (||) can be used in an IF or ELIF statement.
Let’s look at an example using these operators in an IF statement:

```bash
#!/usr/bin/env bash
# File: condexif.sh

if [[ $1 -gt 3 ]] && [[ $1 -lt 7 ]]
then
  echo "$1 is between 3 and 7"
elif [[ $1 =~ "Jeff" ]] || [[ $1 =~ "Roger" ]] || [[ $1 =~ "Brian" ]]
then
  echo "$1 works in the Data Science Lab"
else
  echo "You entered: $1, not what I was looking for."
fi
```
Note that IF/ELIF/ELSE statements can be nested inside of other IF statements.
Here’s a small example of a program with nested statements:

```bash
#!/usr/bin/env bash
# File: nested.sh

if [[ $1 -gt 3 ]] && [[ $1 -lt 7 ]]
then
  if [[ $1 -eq 4 ]]
  then
    echo "four"
  elif [[ $1 -eq 5 ]]
  then
    echo "five"
  else
    echo "six"
  fi
else
  echo "You entered: $1, not what I was looking for."
fi
```
