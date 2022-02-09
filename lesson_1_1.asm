section .text

global _start

_start:
    
    mov [message + 1], word 'BA'
    
    mov     edx, 6
    mov     ecx, message
    mov     ebx, 1          ; file descriptor stdout
    mov     eax, 4          ; sys_write
    int     0x80
    
    mov     eax, 1          ; sys_exit
    int     0x80            ; call kernel

section .data
    message db  "Test", 0xA, 0xD