              .data
CONTROL:      .word32 0x10000
DATA:         .word32 0x10008
num1:         .word 0
num2:         .word 0
res:          .word 0
texto:        .asciiz "Ingrese un digito numerico: "

              .code
              lwu $s0, DATA($zero)
              lwu $s1, CONTROL($zero)
              jal ingreso
              dadd $a0, $v0, $zero
              dadd $a1, $v1, $zero
              jal resultado
              sd $v0, res($zero)
              halt

ingreso:      daddi $t0, $zero, texto
              sd $t0, 0($s0)
              daddi $t1, $zero, 4
              sd $t1, 0($s1)
              daddi $t1, $zero, 8
              sd $t1, 0($s1)
              ld $v0, 0($s0)
              sd $v0, num1($zero)
              daddi $t0, $zero, texto
              sd $t0, 0($s0)
              daddi $t1, $zero, 4
              sd $t1, 0($s1)
              daddi $t1, $zero, 8
              sd $t1, 0($s1)
              ld $v1, 0($s0)
              sd $v1, num2($zero)
              jr $ra

resultado:    dadd $v0, $a0, $a1
              sd $v0, 0($s0)
              daddi $t1, $zero, 1
              sd $t1, 0($s1)
              jr $ra
