        AREA NCR, CODE, READONLY
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
; -------- r! --------
        MOV R2, R1
        MOV R3, #1
FACTR
        MUL R4, R3, R2
        MOV R3, R4
        SUBS R2, R2, #1
        BNE FACTR
        MOV R6, R3      ; R6 = r!
; -------- (n-r)! --------
        SUB R7, R0, R1
        MOV R2, R7
        MOV R3, #1
FACTNR
        MUL R4, R3, R2
        MOV R3, R4
        SUBS R2, R2, #1
        BNE FACTNR
        MOV R7, R3      ; R7 = (n-r)!
; -------- denominator --------
        MUL R4, R6, R7  ; r! * (n-r)!
; -------- division --------
        MOV R8, #0      ; quotient
DIVIDE
        CMP R5, R4
        BLT STOPDIV
        SUB R5, R5, R4
        ADD R8, R8, #1
        B DIVIDE
STOPDIV
STOP
        B STOP
        END
