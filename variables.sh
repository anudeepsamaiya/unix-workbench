#!/usr/bin/env bash
# File: variables.sh

myvar='hola! amigo'
port_number=8000

echo $myvar
echo $port_number

line_count=$(cat simplemath.sh | wc -l)
echo $line_count

echo "Script arguments: $@"
echo "First arg: $1. Second arg: $2."
echo "Number of arguments: $#"
