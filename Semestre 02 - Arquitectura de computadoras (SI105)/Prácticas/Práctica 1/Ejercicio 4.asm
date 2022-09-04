         ORG  1000H
   DATO  DB  193
   ROTA  DB  4
;
          ORG  3000H
ROTARIZ:  ADD AL,AL
          JNC SIGO
          ADC AL,0
  SIGO:   DEC CL
          JNZ ROTARIZ
          RET

          ORG  2000H
          MOV AL,DATO
          MOV CL,ROTA
          CALL ROTARIZ
          HLT
          END
