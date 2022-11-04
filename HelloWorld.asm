SECTION .data
    msg     db      'Hello World!', 0Ah
 
SECTION .text
  global  _start
 
  _start:
 
      mov     edx, 13     ;Number of bytes in the msg counting that 0ah
      mov     ecx, msg    ;move the msg memory to ecx
      mov     ebx, 1      ;write this in STD_OUT file
      mov     eax, 4      ;invoke SYS_WRITE
      int     80h
 
      mov     ebx, 0      ; return 0 status on exit - 'No Errors'
      mov     eax, 1      ; invoke SYS_EXIT (kernel opcode 1)
      int     80h
