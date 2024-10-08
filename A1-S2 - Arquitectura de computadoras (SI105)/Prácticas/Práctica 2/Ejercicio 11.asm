                                 EOI       EQU   20H
                                 PIC       EQU   20H
                                 IMR       EQU   21H
                                 INT0      EQU   24H
                                 N_F10     EQU    8
;
;                                          ORG  1000H
                                MOSTRAR    DB     "A"
;
                                           ORG  32
                                           DW    INT_F10
;
                                           ORG  3000H
                              INT_F10:     INT 7
                                           MOV AL, EOI
                                           OUT PIC, AL
                                           IRET
;
;
                                            ORG  2000H
                                            CLI
                                            MOV AH, MOSTRAR
                                            MOV AL, 0FEH
                                            OUT IMR, AL
                                            MOV AL, N_F10
                                            OUT INT0, AL
                                            MOV BX, OFFSET MOSTRAR
                                            MOV AL,1
                                            STI
                                    SIGO:   INC AH
                                            MOV MOSTRAR, AH
                                            CMP AH, 5AH
                                            JNZ  SIGO
                                            HLT
                                            END

                                               