                        .data
               A:       .word  1       
               B:       .word  3
               C:       .word  0

             
                        .code
                        DADD   R1, R0, R0
                        DADD   R9, R0, R0
                        LD     $a0, A(R0)
                        LD     $a1, B(R0)
                        jal    suma
                        SD     $v0, C(R0)
                        HALT

             suma:      DADD   $v0, $a0, $a1
                        jr $ra
                        
