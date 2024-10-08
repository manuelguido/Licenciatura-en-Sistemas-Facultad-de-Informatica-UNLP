                       .data
             N1:       .word   5
             N2:       .word   3
             N3:       .word   0
                                 
                       .code    
                  LD    R1, N1(R0)
                  LD    R2, N2(R0)
                  DADD  R3, R0, R0
                  DADD  R5, R0, R0
         SIGO:    DADD  R5, R5, R1
                  DADDI R2, R2, -1
                  BNEZ  R2, SIGO
                  SD    R5, N3(R0)
                  HALT
