                            .data
             base:          .double 5.85
             altura:        .double 13.47
             divisor:       .double 2.0
             superficie:    .double 0.0
            

                            .code
                       L.D     F1, base(R0)
                       L.D     F2, altura(R0)
                       L.D     F3, divisor(R0)
                       MUL.D   F4, F2, F1
                       DIV.D   F5, F4, F3
                       S.D     F5, superficie(R0)
                       HALT