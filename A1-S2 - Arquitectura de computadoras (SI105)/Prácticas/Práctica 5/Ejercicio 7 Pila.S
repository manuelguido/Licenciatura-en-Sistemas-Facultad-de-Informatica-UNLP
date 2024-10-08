                        .data
           TABLA:       .word  1,2,3,4,5,6,7       
            CANT:       .word  7
             NUM:       .word  2
               C:       .word  0

             
                        .code
                        DADD   R2, R0, R0
                        DADDI  R4, R0, TABLA
                        LD     R5, NUM(R0)
                        LD     R6, CANT(R0)
                        DADDI  R29, R0, 0x300
                        DADDI  R29, R29, -24
                        SD     R4, 16(R29)
                        SD     R5, 8(R29)
                        SD     R6, 0(R29)
                        jal    busca
                        SD     R2, C(R0)
                        HALT

             busca:     LD     R4, 16(R29)
                        LD     R5, 8(R29)
                        LD     R6, 0(R29)
             busca1:    LD     R8, (R4)
                        SLT    R9, R8, R5
                        BNEZ   R9, listo
                        DSUB   R9, R8, R5
                        BEQZ   R9, listo
                        DADDI  R2, R2, 1
             listo:     DADDI  R4, R4, 8
                        DADDI  R6, R6, -1
                        BNEZ   R6, busca1
                        JR     R31

                        
