.data
    N: .word 10
    sum: .word 0

.text
.globl main

main:
    la t0,N
    lw t0,0(t0)

    li t1,0
    li t2,1

loop_start:
    bgt t2,t0,loop_end

    add t1,t1,t2
    addi t2,t2,1

    j loop_start

loop_end:
    mv a0,t1
    li a7,1
    ecall
exit:
    li a7,10
    ecall
