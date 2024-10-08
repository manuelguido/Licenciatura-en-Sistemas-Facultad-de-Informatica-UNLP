                        .data
             INF:       .double  18.5
             NOR:       .double  25.0
             SOB:       .double  30
             Peso:      .double  61.95
             Altura:    .double  1.6
             IMC:       .word    0

                        .code
                        L.D     f1, INF(R0)
                        L.D     f2, NOR(R0)
                        L.D     f3, SOB(R0)
                        L.D     f4, Peso(R0)
                        L.D     f5, Altura(R0)
                        MUL.D   f6, f5, f5
                        DIV.D   f7, f4, f6
                        c.lt.d  f1, f7
                        bc1f    Infrapeso
                        c.lt.d  f2, f7
                        bc1f    Normal
                        c.lt.d  f3, f7
                        bc1f    Sobrepeso
                        DADDI   R1, R0, 4
                        SD      R1, IMC(R0)
                        J       FIN
          Infrapeso:    DADDI   R1, R0, 1
                        SD      R1, IMC(R0)
                        J       FIN
             Normal:    DADDI   R1, R0, 2
                        SD      R1, IMC(R0)
                        J       FIN
          Sobrepeso:    DADDI   R1, R0, 3
                        SD      R1, IMC(R0)
                FIN:    HALT
