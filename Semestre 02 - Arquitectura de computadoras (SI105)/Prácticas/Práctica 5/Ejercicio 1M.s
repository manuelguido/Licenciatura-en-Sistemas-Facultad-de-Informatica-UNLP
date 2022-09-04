                        .data
              n1:       .double 9.13
              n2:       .double 6.58
             rs1:       .double 0.0
             rs2:       .double 0.0

                      .code
                       L.D     F1, n1(R0)
                       L.D     F2, n2(R0)
                       ADD.D   F3, F2, F1
                       MUL.D   F1, F2, F1
                       MUL.D   F4, F2, F1
                       S.D     F3, rs1(R0)
                       S.D     F4, rs2(R0)
                       HALT