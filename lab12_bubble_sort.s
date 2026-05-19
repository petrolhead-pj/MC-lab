        AREA BUBBLE, CODE, READONLY
ENTRY
        MOV R0, #5          ; number of elements
        LDR R1, =ARRAY      ; base address
        SUB R6, R0, #1      ; outer loop count
OUTER
        MOV R2, R6
        LDR R1, =ARRAY
INNER
        LDR R3, [R1]        ; first element
        LDR R4, [R1, #4]    ; second element
        CMP R3, R4
        BLE NOSWAP
        STR R4, [R1]
        STR R3, [R1, #4]
NOSWAP
        ADD R1, R1, #4
        SUBS R2, R2, #1
        BNE INNER
        SUBS R6, R6, #1
        BNE OUTER
STOP
        B STOP
        AREA DATA1, DATA, READWRITE
ARRAY DCD 50,20,40,10,30
        END
