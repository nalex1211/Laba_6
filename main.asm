GeometricalProg(int):
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $16, %rsp
        movl    %ecx, 16(%rbp)
        movl    $0, -4(%rbp)
        movl    -4(%rbp), %eax
        movl    %eax, -8(%rbp)
        movl    $0, -12(%rbp)
        jmp     .L2
.L3:
        movl    16(%rbp), %edx
        movl    %edx, %eax
        addl    %eax, %eax
        addl    %eax, %edx
        movl    -8(%rbp), %eax
        addl    %edx, %eax
        movl    %eax, -4(%rbp)
        movl    -4(%rbp), %eax
        movl    %eax, -8(%rbp)
        addl    $1, -12(%rbp)
.L2:
        cmpl    $9999, -12(%rbp)
        jle     .L3
        movl    -4(%rbp), %eax
        addq    $16, %rsp
        popq    %rbp
        ret