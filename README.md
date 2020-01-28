# Arm-Assembly-GnomeSort
This is an Arm Assembly implementation of the first round of an Gnome Sort algorithm I wrote for my Computer Organization Course
# Project 1
ITEC 352 Fall 2019
## Author

* **Jeffrey Smith** - [jsmith1031](https://github.com/jsmith1031)

Email: [jsmith1031@radford.edu](mailto::jsmith1031@radford.edu)

## Getting Started

For this program, I was using a Raspberry Pi 2 model B with ARMv7 instruction set

### Prerequisites

A Raspberry Pi with ARMv7 or other compatible Architecture

### Installing


create the .o file with
```
as -o P1_jsmith1031.o P1_jsmith1031.s
```
compile via gcc with
```
gcc -o P1_jsmith1031 P1_jsmith1031.o
```
run with
```
./P1_jsmith1031
```
### Debugging

There many still be some issues in this program, for Debugging I recommend Good DeBugger
after compiling, open the program in good debugger via
```
gdb P1_jsmith1031
```
then layout
  ```
  layout reg
  ```
then
  ```
  start
  si
  ```
