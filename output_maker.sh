#!/bin/bash
g++ -O2 --std=c++17 solution.cpp
rm tests/*.ans
input_files_count=$(ls tests/ -1 | grep in | wc -l)
echo "Generating output files..."
for ((i=0; i<$input_files_count; i++)); do
	echo "start #$i";
	./a.out < tests/$i.in > tests/$i.ans;
	echo "end #$i";
done
rm a.out
