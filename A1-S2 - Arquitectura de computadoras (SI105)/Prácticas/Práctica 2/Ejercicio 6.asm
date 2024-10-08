                      ORG 1000H
                MSJ   DB "INGRESE UN NUMERO"
                FINM  DB ?
                NUM   DB ?
              CERO0   DB "CERO"
              FIN0    DB ?
              UNO1    DB "UNO"
              FIN1    DB ?
              DOS2    DB "DOS"
              FIN2    DB ?
              TRES3   DB "TRES"
              FIN3    DB ?
            CUATRO4   DB "CUATRO"
              FIN4    DB ?
             CINCO5   DB "CINCO"
              FIN5    DB ?
             SEIS6    DB "SEIS"
              FIN6    DB ?
             SIETE7   DB "SIETE"
              FIN7    DB ?
             OCHO8    DB "OCHO"
              FIN8    DB ?
             NUEVE9   DB "NUEVE"
              FIN9    DB ?
;
;
                      ORG 2000H
            SIGO1:    MOV AH, 0
            SIGO:     MOV BX, OFFSET MSJ
                      MOV AL, OFFSET FINM - OFFSET MSJ
                      INT 7
                      MOV BX, OFFSET NUM
                      INT 6
                      MOV CL, NUM
                      CMP CL, 30H
                      JNZ UNO_1
                      MOV BX, OFFSET CERO0
                      MOV AL, OFFSET FIN0 - OFFSET CERO0
                      INT 7
                      ADD AH, 1
                      CMP AH, 1
                      JZ SIGO
                      JMP AFUERA
              UNO_1:  CMP CL, 31H
                      JNZ DOS_2
                      MOV BX, OFFSET UNO1
                      MOV AL, OFFSET FIN1 - OFFSET UNO1
                      INT 7
                      JMP SIGO1
              DOS_2:  CMP CL, 32H
                      JNZ TRES_3
                      MOV BX, OFFSET DOS2
                      MOV AL, OFFSET FIN2 - OFFSET DOS2
                      INT 7
                      JMP SIGO1
             TRES_3:  CMP CL, 33H
                      JNZ CUATRO_4
                      MOV BX, OFFSET TRES3
                      MOV AL, OFFSET FIN3 - OFFSET TRES3
                      INT 7
                      JMP SIGO1
           CUATRO_4:  CMP CL, 34H
                      JNZ CINCO_5
                      MOV BX, OFFSET CUATRO4
                      MOV AL, OFFSET FIN4 - OFFSET CUATRO4
                      INT 7
                      JMP SIGO1
            CINCO_5:  CMP CL, 35H
                      JNZ SEIS_6
                      MOV BX, OFFSET CINCO5
                      MOV AL, OFFSET FIN5 - OFFSET CINCO5
                      INT 7
                      JMP SIGO1
             SEIS_6:  CMP CL, 36H
                      JNZ SIETE_7
                      MOV BX, OFFSET SEIS6
                      MOV AL, OFFSET FIN6 - OFFSET SEIS6
                      INT 7
                      JMP SIGO1
            SIETE_7:  CMP CL, 37H
                      JNZ OCHO_8
                      MOV BX, OFFSET SIETE7
                      MOV AL, OFFSET FIN7 - OFFSET SIETE7
                      INT 7
                      JMP SIGO1
             OCHO_8:  CMP CL, 38H
                      JNZ NUEVE_9
                      MOV BX, OFFSET OCHO8
                      MOV AL, OFFSET FIN8 - OFFSET OCHO8
                      INT 7
                      JMP SIGO1
            NUEVE_9:  MOV BX, OFFSET NUEVE9
                      MOV AL, OFFSET FIN9 - OFFSET NUEVE9
                      INT 7
                      JMP SIGO1
            AFUERA:   HLT
                      END
