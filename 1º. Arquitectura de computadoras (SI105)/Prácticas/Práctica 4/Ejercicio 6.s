           .data
A:        .word  3
B:        .word  3
C:        .word  3
D:        .word  0
;
;
                  .text
                  LD     R1, A(R0)
                  LD     R2, B(R0)
                  LD     R3, C(R0)
                  BNE    R1, R2, NO_IGUAL1
                  DADDI  R4, R0, 1
    NO_IGUAL1:    BNE    R1, R3, NO_IGUAL2
                  DADDI  R4, R4, 1
                  J      FIN
    NO_IGUAL2:    BNE    R2, R3, FIN
                  DADDI  R4, R0, 1
          FIN:    BEQZ   R4, LISTO
                  DADDI  R4, R4, 1
        LISTO:    SD     R4, D(R0)
                  HALT
