                             ORG  1000H
                   DATO      DB     193
                 ROTADE      DB      3
;
                             ORG  3000H
                  ROTARIZ:  ADD AL,AL
                            JNC SIGO
                            ADC AL,0 
                   SIGO:    DEC CL   
                            JNZ ROTARIZ  
                            RET                 
;
                            ORG  4000H
                 ROTADER:   MOV  AH, 8
                            SUB  AH, CL
                            MOV  CL, AH
                            CALL  ROTARIZ
                            RET
;
                            ORG  2000H
                            MOV  AL, DATO
                            MOV  CL,  ROTADE
                            CALL  ROTADER
                            HLT
                            END
