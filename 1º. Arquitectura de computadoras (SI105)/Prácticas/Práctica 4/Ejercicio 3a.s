                     .data
              A:     .word 1
              B:     .word 6

                     .code
                     LD     R1, A(R0)
                     LD     R2, B(R0)
           LOOP:     DSLL   R1, R1, 1
                     DADDI  R2, R2,  -1
                     BNEZ   R2, LOOP
                     HALT
