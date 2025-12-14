          .data
CONTROL:  .word32 0x10000
DATA:     .word32 0x10008
num:      .word 0
texto:    .asciiz "Ingrese un numero de un digito:"
cero:     .asciiz "cero"
uno:      .asciiz "uno"
dos:      .asciiz "dos"
tres:     .asciiz "tres"
cuatro:   .asciiz "cuatro"
cinco:    .asciiz "cinco"
seis:     .asciiz "seis"
siete:    .asciiz "siete"
ocho:     .asciiz "ocho"
nueve:    .asciiz "nueve"

          .code
          lwu $s0, DATA($zero)
          lwu $s1, CONTROL($zero)
          jal ingreso
          dadd $a0, $zero, $v0
          jal muestra
          halt

ingreso:  daddi $t0, $zero, texto
          sd $t0, 0($s0)
          daddi $t1, $zero, 4
          sd $t1, 0($s1)
          daddi $t1, $zero, 8
          sd $t1, 0($s1)
          ld $v0, 0($s0)
          sd $v0, num($zero)
          jr $ra

muestra:  daddi $t3, $zero, 8
          dmul $t2, $a0, $t3
          daddi $t0, $t2, cero
          sd $t0, 0($s0)
          daddi $t1, $zero, 4
          sd $t1, 0($s1)
          jr $ra
