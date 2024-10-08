                       .data
             cadena:   .asciiz  "abcdefghajaja"
             car:      .asciiz  "a"
             cant:       .word   0
                                 
                         .code    
                  DADD   R1, R0, R0
                  DADD   R2, R0, R0
                  LBU    R3, car(R0)
         ARRIBA:  LBU    R4, cadena(R1)
                  BEQZ   R4, FIN
                  DSUB   R5, R4, R3
                  BNEZ   R5, DISTINTOS
                  DADDI  R2, R2, 1
      DISTINTOS:  DADDI  R1, R1, 1
                  J      ARRIBA
            FIN:  HALT
