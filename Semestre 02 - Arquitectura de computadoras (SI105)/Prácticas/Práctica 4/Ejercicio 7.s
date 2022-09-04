                     .data
TABLA:        .word 1,4,5,6,6,8,2,2,9,10
RES:            .word 1,1,1,1,1,1,1,1,1,1
X:                 .word 4
LONG:         .word 10
CANT:         .word 0
MASK:         .word 0x8000
                     .code
                      LD   R1, LONG(R0)
                      LD   R2, X(R0)
                      LD   R7, MASK(R0)
                      DADD  R3, R0, R0
                      DADD  R5, R0, R0
SIGO:            LD    R4, TABLA(R3)
                      DSUB R4, R4, R2
                      BEQZ R4, IGMEN
                      AND  R4, R4, R7
                      BNEZ  R4,  IGMEN
                      DADDI R5, R5, 1
                      J  MAYOR
IGMEN:         SD  R0, RES(R3)
MAYOR:        DADDI  R1, R1, -1
                      DADDI  R3, R3, 8
                      BNEZ    R1, SIGO
                      SD  R5, CANT(R0)
                      HALT
