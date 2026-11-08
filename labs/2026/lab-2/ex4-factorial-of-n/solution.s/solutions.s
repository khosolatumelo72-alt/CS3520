.data
n: .word 5

.text
main:
    lw t0,n
    li t1,1
    li t2,1

loop: 
    bgt t2,t0,done
    mul t1,t1,t2
    addi t2,t2,1
    j loop

done:
    mv a0,t1
    li a7,1
    ecall

    li a0,10
    li a7,11
    ecall

    li a0,0
    li a7,10
    ecall        