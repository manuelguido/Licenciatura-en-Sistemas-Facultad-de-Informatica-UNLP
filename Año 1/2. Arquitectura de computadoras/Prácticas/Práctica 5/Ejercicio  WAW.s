                            .data
             base:          .double 5.85
             altura:        .double 13.47
             divisor:       .double 2.0
             divisor2:      .double 2.0
             superficie:    .double 0.0
            

                            .code
                       L.D     F5, base(R0)
                       L.D     F6, altura(R0)
                       L.D     F8, divisor(R0)
                       L.D     F7, divisor2(R0)
                       DIV.D   F4, F6, F5
                       ADD.D   F4, F7, F8
                       HALT