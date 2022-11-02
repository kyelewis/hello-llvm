#if __x64_64__
.global println
.global exit

.text
  println:
    mov %rdi, %r8  # argument 1 string address 
    mov %rsi, %r9  # argument 2 string length 

    mov $1, %rax   # syscall 1 write
    mov $1, %rdi   # fd 1 stdout 
    mov %r8, %rsi  # string address
    mov %r9, %rdx  # string length

    syscall
    ret

  exit:
    mov %rdi, %r8   # argument 1 exit code 
    mov $60, %rax  # syscall 60 exit
    mov %r8, %rdi  # exit code
    syscall

#endif
