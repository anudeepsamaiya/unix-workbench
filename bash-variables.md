Bash allows you to store data in variables. The data you store in a variable can
be a string or a number.

A variable on the command line can be created like this:

```bash
myvar='hola! amigo'
port_number=8000
```

Notice that there are no spaces on either side of the equal sign, it is not
allowed when assiging variables.

In order to retrieve the value of a variable you must use the dollar sign($)
before the name of the variable.

```bash
echo $myvar
echo $port_number
```

Occasionally you might want to run a command like you would on the command line
and store the result of that command in a variable.
This syntax is called command substitution. The command is executed and then
gets replaced by the string that resulted from running the command.

```bash
line_count=$(cat simplemath.sh | wc -l)
echo $line_count
```

With Bash scripts, the script gives you a few variables for free.

```bash
#!/usr/bin/env bash
# File: variabless.sh

echo "Script arguments: $@"
echo "First arg: $1. Second arg: $2."
echo "Number of arguments: $#"
```

Your script can accept arguments just like a command line program!

An array of all of the arguments passed to your script is stored in **$@**.

The total number of arguments passed to your script is stored in **$#**.

The first argument to your script is stored in $1, the second argument is stored in $2 and
so on.
