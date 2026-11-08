.data
a: .word 12
b: .word 18

.text
main:
    lw t0,a
    lw t1,b


    mv t2,t0
    bge t0,t1,use_b
    j start
use_b:
    mv t2,t1

start:

loop:
    blt t2,zero,none
    beq t2,zero,none

    rem t3,t0,t2
    bnez t3,next

    rem t3,t1,t2
    bnez t3,next

    j found

next:
    addi t2,t2,-1
    j loop

none:
    li t2,1
found:
    mv a0,t2
    li a7,1
    ecall

    li a0,10
    li a7,11

    li a0,0
    li a0,10
    ecall            
