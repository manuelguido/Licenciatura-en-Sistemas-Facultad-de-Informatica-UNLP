                     .data
            A:     .word 1
            B:     .word 6

                     .code
                     LD     R2, B(R0)
                     LD     R1, A(R0)
          LOOP:      DADDI  R2, R2, -1 
                     DSLL   R1, R1, 1
                     BNEZ   R2, LOOP
                     HALT
