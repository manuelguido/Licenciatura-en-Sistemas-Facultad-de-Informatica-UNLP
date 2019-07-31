          .data
CONTROL:  .word32 0x10000
DATA:     .word32 0x10008
msjin:    .asciiz "Ingrese su clave"
msjok:    .asciiz "Bienvenido"
msjko:    .asciiz "ERROR"
clave:    .asciiz "code"
cant:     .word 4
ing:      .asciiz ""


          .code
          lwu $s0, DATA($zero)
          lwu $s1, CONTROL($zero)
comienzo: dadd $s2, $zero, $zero
          ld $t2, cant($zero)
          daddi $t0, $zero, msjin
          sd $t0, 0($s0)
          daddi $t1, $zero, 4
          sd $t1, 0($s1)
otro:     jal char
          sb $v0, ing($s2)
          daddi $t2, $t2, -1
          daddi $s2, $s2, 1
          bnez $t2, otro


          ld $t3, cant($zero)
sig:      lbu $t4, clave($t3)
          lbu $t5, ing($t3)
          bne $t4, $t5, error
          daddi $t3, $t3, -1
          bnez $t3, sig
          daddi $t0, $zero, msjok
          sd $t0, 0($s0)
          daddi $t1, $zero, 4
          sd $t1, 0($s1)
          halt

error:    daddi $t0, $zero, msjko
          sd $t0, 0($s0)
          daddi $t1, $zero, 4
          sd $t1, 0($s1)
          j comienzo


char:     daddi $t1, $zero, 9
          sd $t1, 0($s1)
          lb $t0, 0($s0)
          dadd $v0, $t0, $zero
          jr $ra
