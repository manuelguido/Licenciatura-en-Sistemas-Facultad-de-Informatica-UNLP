                                         ORG  1000H
                            MSJ1         DB  "INGRESE PRIMER NUMERO"
                            FIN1         DB   ?
                            MSJ2         DB  "INGRESE SEGUNDO NUMERO"
                            FIN2         DB   ?
                            NUM1         DB   ?
                            NUM2         DB   ?
                            RESUL        DB   30H
                                         DB   30H
;
;
                                         ORG 2000H
                                         MOV AX, 0000H
                                         MOV BX, OFFSET MSJ1
                                         MOV AL, OFFSET FIN1 - OFFSET MSJ1
                                         INT 7
                                         MOV BX, OFFSET NUM1
                                         INT 6
                                         MOV BX, OFFSET MSJ2
                                         MOV AL, OFFSET FIN2 - OFFSET MSJ2
                                         INT 7
                                         MOV BX, OFFSET NUM2
                                         INT 6
                                         MOV AL, NUM1
                                         ADD AL, NUM2
                                         SUB AL, 30H
                                         CMP AL, 3AH
                                         JC  RESUL_CORREC
                                         ADD AL, 6
                                         SUB AL, 10H
                                         ADD AH, 31H
                                         JMP ABAJO
                         RESUL_CORREC:   MOV AH, 30H
                                ABAJO:   MOV RESUL, AH
                                         MOV RESUL+1, AL
                                         MOV BX, OFFSET RESUL
                                         MOV AL, 2
                                         INT 7
                                         HLT
                                         END
 