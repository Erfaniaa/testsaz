# Testsaz

Testsaz (تست‌ساز) is a fast, minimal test-case generator system for ICPC-style and IOI-style problems.

It can be helpful when you're preparing some problems for algorithmic contest and Algorithm Design and Data Structures courses.

##  Usage

### Initialization

1. Clone this repository.
2. ```chmod +x *.sh```

### Problem preparation

1. Modify these files according to your problem:
   - *solution.cpp*: the main solution to your problem
   - *generator.cpp*: input files generator
   - *generator_input.txt*: line-separated data which is being passed to the generator
2. ```./input_maker.sh```
   Now, there are some input files in the *tests* directory.
3. ```./output_maker.sh```
   Now, there are some output files in the *tests* directory.

## Sample

A simple problem is already prepared in this repository.

These files are modified according to the *A+B problem*:

- *solution.cpp*: It reads two integers from the input, and it prints their sum.
- *generator.cpp*: It generates two random integers in a specific range.
- *generator_input.txt*: It determines the ranges for the generator.

## Notes

- Don't forget to use testlib or ```srand(time(0));``` in your generator. Testsaz generates input files with a 1 second time delay, so using only ```srand(time(0));``` suffices for obtaining random and different input files.
- The total number of lines in *generator_input.txt* file matters. It determines the total number of input files.
- The last line of *generator_input.txt* file should not be empty.

## See also

- [testlib](https://github.com/MikeMirzayanov/testlib)

- [tps](https://github.com/ioi-2017/tps)
