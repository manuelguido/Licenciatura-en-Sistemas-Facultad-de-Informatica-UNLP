                       ORG 1000H
        FRASE          DB      "AzAytA",0

                       ORG  3000H
            CONCAR:    CMP  byte ptr[BX],0
                       JZ  FIN
                       INC  CX
                       INC  BX
                       JMP  CONCAR
             FIN:      RET


                         ORG  2000H
                         MOV  BX,OFFSET FRASE
                         MOV  CX,0
                         CALL CONCAR
                         HLT
                         END
