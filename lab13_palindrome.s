			AREA PALIN, CODE, READONLY
ENTRY
        LDR R0, =121        ; number
        MOV R1, R0          ; save original number
        MOV R2, #0          ; reversed number
LOOP
        MOV R3, #10
        MOV R4, #0          ; quotient
DIVIDE
        CMP R0, R3
        BLT REMAINDER
        SUB R0, R0, R3
        ADD R4, R4, #1
        B DIVIDE
REMAINDER
        MOV R5, R0          ; digit
; reverse = reverse*10 + digit
        MOV R6, #10
        MUL R7, R2, R6
        ADD R2, R7, R5
        MOV R0, R4          ; quotient becomes new number
        CMP R0, #0
        BNE LOOP
; compare original and reverse
        CMP R1, R2
        BEQ PALIN
NOTPALIN
        MOV R8, #0
        B STOP
PALIN
        MOV R8, #1
STOP
        B STOP
        END
