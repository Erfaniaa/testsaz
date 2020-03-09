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
	echo "$var" > "tmp.txt"
	./a.out < "tmp.txt" > "tests/$i.in"
	echo "end #$i";
	i=$((i+1))
done < "$input"
rm tmp.txt
rm a.out
