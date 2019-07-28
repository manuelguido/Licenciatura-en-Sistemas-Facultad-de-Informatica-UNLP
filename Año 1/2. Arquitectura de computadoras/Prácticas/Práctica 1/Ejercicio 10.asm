                     ORG  1000H
        DIVIDENDO    DB      127
         DIVISOR     DB       10
;
                     ORG  3000H
           RESTO:    SUB  AH, CL
                     CMP  AH, CL
                     JNC  RESTO
                     RET
;
                     ORG  2000H
                     MOV  AH, DIVIDENDO
                     MOV  CL, DIVISOR
                     CALL  RESTO
                     HLT
                     END
