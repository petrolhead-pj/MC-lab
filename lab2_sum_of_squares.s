AREA SUMSQ, CODE, READONLY
ENTRY
MOV R0, #1      ; number = 1
MOV R1, #0      ; sum = 0
MOV R2, #5      ; count = 5
LOOP
    MOV R3, R0      ; pass number to SQU
    BL SQU          ; call procedure (square in R4)
    ADD R1, R1, R4  ; sum = sum + square
    ADD R0, R0, #1  ; next number
    SUBS R2, R2, #1 ; decrease count
    BNE LOOP
STOP
    B STOP          ; infinite loop
; -------- PROCEDURE --------
SQU
    MUL R4, R3, R3  ; R4 = R3 * R3
    BX LR           ; return
END
