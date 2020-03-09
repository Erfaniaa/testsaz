#!/bin/bash
rm -rf tests/
mkdir tests
g++ generator.cpp
input="generator_input.txt"
i=0
echo "Generating input files..."
while IFS= read -r var
do
	sleep 1;
	echo "start #$i";
	./a.out <<< "$var" > "tests/$i.in"
	echo "end #$i";
	i=$((i+1))
done < "$input"
rm a.out
