          .data
CONTROL:  .word32 0x10000
DATA:     .word32 0x10008
punto:    .asciiz "."
texto:    .asciiz "texto"

          .text
          lwu $s1, CONTROL($zero)
          lwu $s0, DATA($zero)

          daddi $t0, $zero, 6           ;Limpia Pantalla
          sd $t1, 0($s1)

          daddi $t1, $zero, 9           ;Lee caracter por teclado
          sd $t1, 0($s1)

otro:     sd $t0, 0($s0)
          lbu $t3, punto($zero)
          beq  $t0, $t3, fin
          dadd $t2, $zero, $zero
          ld $t0, texto($t2)            ;Guarda
          daddi $t2, $t2, 1
          j otro

fin:      daddi $t0, $zero, texto
          ld $t0, 0($s0)
          daddi $t1, $zero, 4
          sd $t1, 0($s1)
          halt
