                        .data
               A:       .word  1       
               B:       .word  3
               C:       .word  0

             
                        .code
                        DADDI   $sp, $0, 0x0300
                        DADDI   $sp, $sp, -16
                        LD     $t0, A(R0)
                        LD     $t1, B(R0)
                        SD     $t0, 8($sp)
                        SD     $t1, 0($sp)
                        jal    suma
                        SD     $v0, C(R0)
                        DADDI  $sp, $sp, +16
                        HALT

             suma:      DADDI  $sp, $sp, -16
                        DADD   $fp, $sp, $0
                        SD     $ra, 8($fp)
                        LD     $a0, 24($fp)
                        LD     $a1, 16($fp)
                        DADD   $v0, $a0, $a1
                        DADDI  $sp, $sp, +16
                        jr $ra
                        
