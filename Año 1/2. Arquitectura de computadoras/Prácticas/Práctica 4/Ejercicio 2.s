                             .data
                      A:     .word  1
                      B:     .word  2

                             .code
                             LD     R1, A(R0)
                             LD     R2, B(R0)
                             SD     R2, A(R0)
                             SD     R1, B(R0)
                             HALT
