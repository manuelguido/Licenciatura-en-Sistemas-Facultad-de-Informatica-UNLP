                        .data
         cadena1:       .asciiz  "vamos que anda"       
         cadena2:       .asciiz  "vamos que anda"
         direccion:     .word  0
                          
                        .code
                        DADD   R2, R0, R0
                        DADDI  R4, R0, cadena1
                        DADDI  R5, R0, cadena2
                        jal    busca
                        SD     R2, direccion(R0)
                        HALT

             busca:     LBU    R8, (R4)
                        LBU    R9, (R5)
                        BEQZ   R9, listo1
                        DADDI  R2, R2, 1
                        DSUB   R10, R9, R8
                        BNEZ   R10, listo
                        DADDI  R4, R4, 1
                        DADDI  R5, R5, 1
                        j      busca
             listo1:    DADDI  R2, R0, -1
             listo:     jr     R31
                        
                        
                      

                        
