AREA EVEN_SUM, CODE, READONLY
ENTRY
MOV R0, #2        ; current even number
MOV R1, #0        ; sum = 0
MOV R2, #5        ; n = 5 (change this for any n)
LOOP
    ADD R1, R1, R0    ; sum = sum + even number
    ADD R0, R0, #2    ; next even number
    SUBS R2, R2, #1   ; decrease count
    BNE LOOP          ; repeat until n = 0
LDR R3, =RESULT   ; load address of memory
STR R1, [R3]      ; store sum in memory
STOP
    B STOP
RESULT DCD 0      ; memory location to store result
END
