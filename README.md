# Testsaz

Testsaz ("تست‌ساز" in Persian) is a fast, minimal test-case generator system for ICPC-style and IOI-style problems.

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

## Logs

- ```./input_maker.sh``` command prints a report which shows running time and exit code of the generator:

  ```
  Generating input files...

  start #0
  time: 0:00.00
  exit code: 0
  end #0

  start #1
  time: 0:00.00
  exit code: 0
  end #1

  start #2
  time: 0:00.00
  exit code: 0
  end #2

  ...
  ```


- ```./output_maker.sh``` command prints a report which shows running time and exit code of the solution:

  ```
  Generating output files...

  start #0
  time: 0:00.00
  exit code: 0
  end #0

  start #1
  time: 0:00.00
  exit code: 0
  end #1

  start #2
  time: 0:00.00
  exit code: 0
  end #2

  ...
  ```

## Sample

A simple problem with 15 tests is already prepared in this repository.

These files are modified according to the *A+B problem*:

- *solution.cpp*: It reads two integers from the input, and it prints their sum.
- *generator.cpp*: It generates two random integers in a specific range.
- *generator_input.txt*: It contains the specified ranges for the generator.

## Notes

- As it is seen in the sample, a random seed can be passed to the generator.
- The total number of lines in *generator_input.txt* file matters. It determines the total number of input files.
- The last line of *generator_input.txt* file should be empty.

## See also

- [testlib](https://github.com/MikeMirzayanov/testlib)
- [tps](https://github.com/ioi-2017/tps)
