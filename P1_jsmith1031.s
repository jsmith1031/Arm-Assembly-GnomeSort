/*
Name : Jeffrey Smith
Course : itec 352 Fall 2019
Date :  10-14-2019
Program : Project 1, Gnome Sort Algorithm
Memory Visualization:

Array:
r1  : contains blocks on 4 bytes storing ints in the array
__________________________________
|     |      |      |     |      |
|  1  |  32  |  10  |  8  |  33  |
|_____|______|______|_____|______|

r2  : Array index tracker

r3  : Array index tracker - 1, or the array index value minus 4 since the values 
      are 4 bytes each

r4  : A value pulled from the array at the array index tracker(r2)

r5  : A value pulled from the array at the array index -1

*/
.data
.balign 4
array: .word 1, 32, 10, 8, 33  @array declaration
.text
.global main
main:
        ldr r1, =array         @load array into reg 1
        mov r2, #0              
        b while
while:
        cmp r2, #20            @check if array index is at 20, which is 5 values
        bge end
        cmp r2, #0             @check if the array index is equal to 0
        beq increase           @func ifequal called if cmp is true
        sub r3, r2, #4         @reg 3 is the value of the array index - 1  
        ldr r4, [r1, r2]       @reg 4 is value pulled from the array at index 
        ldr r5, [r1, r3]       @reg 5 is value of array index - 1 
        cmp r4, r5             @check if r4 is >= r5
        bge increase           @increase index value is r4 >= r5 is true
        b else                 @func else statement
end:
        ldr r0, [r1, #16]      @print last value
        bx lr                  @exit program
increase:
        add r2, r2, #4         @increase the array index counter by 4 bytes
        b while                @return to the the while func
else:
        str r5, [r1, r2]       @arr(r1)[index(r2)] = arr[index - 1](r5); 
        str r4, [r1, r3]       @arr(r1)[index - 1](r5) = temp(r6); 
        sub r2, r2, #4         @decrease the index by 1 which is index--; 
        b while                @return to while func