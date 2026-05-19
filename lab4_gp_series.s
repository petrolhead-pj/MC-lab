AREA GP_PROG, CODE, READONLY
ENTRY
MOV R0, #2        ; first term (a)
MOV R1, #2        ; common ratio (r)
MOV R2, #5        ; n (number of terms)
LDR R3, =RESULT   ; memory pointer
LOOP
    STR R0, [R3], #4   ; store term and move to next memory
    MUL R0, R0, R1     ; next term = current * ratio
    SUBS R2, R2, #1    ; decrease count
    BNE LOOP
STOP
    B STOP
RESULT DCD 0,0,0,0,0   ; space for 5 terms
END
