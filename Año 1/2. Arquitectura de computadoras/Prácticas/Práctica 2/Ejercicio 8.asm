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
                                         MOV AH, NUM1
                                         SUB  AH, NUM2
                                         MOV AL, AH
                                         AND AL, 10000000b
                                         JNZ ES_NEGA
                                         ADD AH, 30H
                                         MOV AL, 2BH
                                         JMP AFUERA
                             ES_NEGA:    MOV CL, 255
                                         SUB CL, AH
                                         ADD CL, 1
                                         MOV AH, CL
                                         ADD AH, 30H
                                         MOV AL, 2DH
                             AFUERA:     MOV RESUL, AX
                                         MOV BX, OFFSET RESUL
                                         MOV AL, 2
                                         INT 7
                                         HLT
                                         END
 