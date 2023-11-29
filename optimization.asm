GeometricalProg(int):
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $16, %rsp
        movl    %ecx, 16(%rbp)
        movl    $0, -4(%rbp)
        movl    $0, -8(%rbp)
        jmp     .L2
.L3:
        movl    16(%rbp), %edx
        movl    %edx, %eax
        addl    %eax, %eax
        addl    %edx, %eax
        addl    %eax, -4(%rbp)
        addl    $1, -8(%rbp)
.L2:
        cmpl    $9999, -8(%rbp)
        jle     .L3
        movl    -4(%rbp), %eax
        addq    $16, %rsp
        popq    %rbp
        ret