.data
arr: .word 1,2,3,4,5,6,7,8,9,10
len: .word 10

.text

main:
    la t0,arr
    lw t1,len
    li t2,0
    li t3,0

loop:
    bge t3,t1,done
    slli t4,t3,2
    add t4,t0,t4
    lw t5,0(t4)

    andi t6,t5,1
    bnez t6,skip
    addi t2,t2,1

skip:
    addi t3,t3,1
    j loop

done:
    mv a0,t2
    addi a0,a0,48
    li a7,11
    ecall

    li a0,10
    li a0,11
    ecall

    li a0,0
    li a0,10
    ecall            
                            
