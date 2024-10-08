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
                        jal    busca
                        SD     R2, C(R0)
                        HALT

             busca:     LD     R8, (R4)
                        SLT    R9, R8, R5
                        BNEZ   R9, listo
                        DSUB   R9, R8, R5
                        BEQZ   R9, listo
                        DADDI  R2, R2, 1
             listo:     DADDI  R4, R4, 8
                        DADDI  R6, R6, -1
                        BNEZ   R6, busca
                        JR     R31

                        
