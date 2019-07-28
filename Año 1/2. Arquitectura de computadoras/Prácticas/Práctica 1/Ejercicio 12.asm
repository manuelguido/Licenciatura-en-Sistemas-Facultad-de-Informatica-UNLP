                                ORG  1000H
                      FRASE     DB   "ABBEuMMno",0
           ;
                                ORG  3000H
                     ES_VOCAL:  CMP  AL, 41H
                                JZ  FIN
                                CMP  AL, 45H
                                JZ  FIN
                                CMP  AL, 49H
                                JZ  FIN
                                CMP  AL, 4FH
                                JZ  FIN
                                CMP  AL, 55H
                                JZ  FIN
                                CMP  AL, 61H
                                JZ  FIN
                                CMP  AL, 65H
                                JZ  FIN
                                CMP  AL, 69H
                                JZ  FIN
                                CMP  AL, 6FH
                                JZ  FIN
                                CMP  AL, 75H
                                JZ  FIN
                                MOV  AL, 00H
                                JMP  FINAL 
                          FIN:  MOV  AL, 0FFH
                        FINAL:  RET
;
                                ORG 4000H
                     VOCALES:   CMP  BYTE PTR [BX], 0
                                JZ  FIN1
                                MOV  AL, [BX]
                                CALL ES_VOCAL
                                CMP  AL, 0
                                JZ  NO_ES_VOC
                                INC  CX
                   NO_ES_VOC:   INC  BX
                                JMP  VOCALES
                                FIN1:  RET
;
                                ORG  2000H
                                MOV  BX, OFFSET  FRASE
                                MOV  CX, 0
                                CALL  VOCALES
                                HLT
                                END
