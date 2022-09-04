                     .data
           TABLA:    .word 20,1,14,3,2,58,18,7,12,11
             NUM:    .word 7
            LONG:    .word 10

                     .code
                      LD     R1, LONG(R0)
                      LD     R2, NUM(R0)
                      DADD   R3, R0, R0
                      DADD   R10, R0, R0
            LOOP:     LD     R4, TABLA(R3)
                      BEQ    R4, R2, LISTO
                      DADDI  R1, R1, -1
                      DADDI  R3, R3, 8
                      BNEZ   R1, LOOP
                      J      FIN
           LISTO:     DADDI  R10, R0, 1
             FIN:     HALT
