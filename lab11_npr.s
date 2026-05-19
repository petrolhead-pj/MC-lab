        AREA NPR, CODE, READONLY
        ENTRY
        MOV R0, #5      ; n
        MOV R1, #2      ; r
; -------- n! --------
        MOV R2, R0
        MOV R3, #1
FACTN
        MUL R4, R3, R2
        MOV R3, R4
        SUBS R2, R2, #1
        BNE FACTN
        MOV R5, R3      ; R5 = n!
; -------- (n-r)! --------
        SUB R6, R0, R1
        MOV R2, R6
        MOV R3, #1
FACTNR
        MUL R4, R3, R2
        MOV R3, R4
        SUBS R2, R2, #1
        BNE FACTNR
        MOV R6, R3      ; R6 = (n-r)!
; -------- division --------
        MOV R7, #0      ; quotient
DIVIDE
        CMP R5, R6
        BLT STOPDIV
        SUB R5, R5, R6
        ADD R7, R7, #1
        B DIVIDE
STOPDIV
STOP
        B STOP
        END
