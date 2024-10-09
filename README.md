# Assembly Language Assignment

## Overview
This assignment requires students to develop an ARM assembly program using Keil uVision 5. The program will manipulate arrays to perform calculations such as summing values and determining the largest power of two divisors.

## Assignment Objectives
- Develop a program that manipulates and analyzes data stored in arrays.
- Implement and utilize functions to enhance code readability and reusability.
- Demonstrate proficiency in using Assembly language for practical programming tasks.

## Instructions
- **Individual Work**: This assignment must be completed individually. Be prepared to discuss your solution.
- **Code Quality**: Your program should be well-organized, fully commented, and easy to read. Utilize procedures to structure your code efficiently.

## Assignment Tasks
### a) Array Initialization
Declare an array of at least 10 8-bit unsigned integers with initial values:
34, 56, 27, 156, 200, 68, 128, 235, 17, 45

### b) Total Sum Calculation
Calculate the sum of all elements in the array and store it in a variable named `SUM`.

### c) Sum of Even Numbers
Calculate the sum of all even numbers in the array and store it in a variable named `EVEN`.

### d) Largest Power of 2 Divisors
For each element in the array, determine the largest power of two that divides the number exactly:
- Implement a function named `POW2` that takes an integer as an input and returns the largest power of two divisor.
- Store the results in a new array in the memory.

### Example:
For an input of `52`, `POW2` should return `4`, as the rightmost bit in `(52)10 = (110100)2` is in the 4's place.

## Development Environment
- **Software Required**: Keil uVision 5
- **Target Platform**: ARM Processor

