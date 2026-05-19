AREA ODD_SUM, CODE, READONLY
ENTRY
MOV R0, #1      ; R0 = first odd number
MOV R1, #0      ; R1 = sum
MOV R2, #10     ; R2 = count (10 numbers)
LOOP
ADD R1, R1, R0   ; sum = sum + current odd number
ADD R0, R0, #2   ; next odd number
SUBS R2, R2, #1  ; decrease count
BNE LOOP         ; repeat until count = 0
STOP
B STOP           ; infinite loop
END
