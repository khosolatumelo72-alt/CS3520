.data

    a: .word 15
    b: .word 42
    msg_a: .string "Larger: 15\n"
    msg_b: .string "Larger: 42\n"

.text

.globl main

main:
    la t0,a 
    lw t1,0(t0)

    la t0,b
    lw t2, 0(t0)

    bge t2,t1,print_b

print_a:
    la a0,msg_a
    li a7, 4
    ecall
    
    j end_if

print_b:
    la a0,msg_b
    li a7, 4
    ecall

end_if:
    li a7,10
    ecall