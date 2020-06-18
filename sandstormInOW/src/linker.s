.thumb
.align 2

.equ COMPILED_C_ADDR, 0xFFFFFFFF

.equ CONTINUE_EXEC_1, 0x0806D601
.equ CONTINUE_EXEC_2, 0x0806D651

MAIN:
PUSH {r0-r5}
LDR r0, =COMPILED_C_ADDR
BL CALL_USING_R0

END:
POP {r0-r5}
LSL r0, r0, #0x18
LSL r0, r0, #0x18
CMP r0, #0x1
BEQ BRANCHER
MOV r0, r5
LDR r1, =CONTINUE_EXEC_1
BX r1

BRANCHER:
LDR r0, =CONTINUE_EXEC_2
BX r0

CALL_USING_R0:
BX r0
