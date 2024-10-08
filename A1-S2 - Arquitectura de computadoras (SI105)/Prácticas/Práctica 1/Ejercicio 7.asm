                ORG 1000H
       FRASE    DB      'AzAytA',0
       CARAC    DB       'A'

                ORG  3000H
      NCHAR:    PUSH  BX
                MOV  BX,SP
                ADD  BX,4
                MOV  AX,[BX]
                ADD  BX,2
                MOV  DX,[BX]
                MOV  BX,DX
      SIGO:     CMP BYTE PTR [BX],0
                JZ  FIN
                CMP  AL,[BX]
                JNZ  NO_SUMO
                INC  CX
                MOV  byte ptr[BX],58H
      NO_SUMO:  INC  BX
                JMP  SIGO
           FIN: POP BX
                RET
;
;
                         ORG  2000H
                         MOV CX,0000H
                         MOV  BX,OFFSET FRASE
                         PUSH  BX
                         MOV  AH,0
                         MOV  AL,CARAC
                         PUSH  AX
                         CALL  NCHAR
                         HLT
                         END
