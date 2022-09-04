                    ORG 1000H
             NUM    DB  ?
             MSJ1   DB  "cARACTER NO VALIDO"
             FIN1   DB  ?
             MSJ2   DB  "CARACTER VALIDO"
             FIN2   DB  ?
;
;
                    ORG 3000H
           ES_NUM:  MOV AH, [BX]
                    SUB AH, 30H
                    CMP AH, 10
                    JNC NO_ES
                    MOV AH, 0FFH
                    JMP FIN
            NO_ES:  MOV AH, 00H
              FIN:  RET
;
;
                    ORG 2000H
                    MOV BX, OFFSET NUM
                    INT 6
                    CALL ES_NUM
                    CMP AH, 00H
                    JZ NO_ES_NUM
                    MOV BX, OFFSET MSJ2
                    MOV AL, OFFSET FIN2 - OFFSET MSJ2
                    INT 7
                    JMP AFUERA
        NO_ES_NUM:  MOV BX, OFFSET MSJ1
                    MOV AL, OFFSET FIN1 - OFFSET MSJ1
                    INT 7
           AFUERA:  HLT
                    END
 