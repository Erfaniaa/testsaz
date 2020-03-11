#!/bin/bash
rm -rf tests/
mkdir tests
g++ generator.cpp
input="generator_input.txt"
i=0
echo "Generating input files..."
while IFS= read -r var
do
	echo ""
	echo "start #$i"
	/usr/bin/time --format="time: %E\nexit code: %x" bash -c "./a.out <<< \"$var\" > tests/$i.in"
	echo "end #$i"
	i=$((i+1))
done < "$input"
rm a.out
