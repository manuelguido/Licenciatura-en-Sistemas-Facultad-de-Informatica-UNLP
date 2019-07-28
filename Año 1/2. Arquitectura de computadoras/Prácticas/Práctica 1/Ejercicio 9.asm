                  ORG 1000H
         NUM      DB   4
        VECES     DB   3

                  ORG 3000H
       ROTADER:   CMP AH, 0
                  JZ FINAL1
       ROTAD:     MOV DL, 0
       SIGO :     SUB  AH, 2
                  JC FIN
                  INC DL
                  CMP AH, 0
                  JZ  FINAL
                  JMP SIGO
           FIN:   ADD DL, 80H
        FINAL:    MOV AH, DL
                  DEC CL
                  JNZ ROTAD
         FINAL1:  RET
;
;                 
                  ORG 2000H
                  MOV AH, NUM
                  MOV CL, VECES
                  CALL ROTADER
                  HLT
                  END
