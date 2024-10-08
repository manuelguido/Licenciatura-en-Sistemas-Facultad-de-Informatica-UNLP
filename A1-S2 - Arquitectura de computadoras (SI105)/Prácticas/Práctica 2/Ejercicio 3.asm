                    ORG 1000H
           LETRA    DB  41H     
;
;
                    ORG 2000H
                    MOV AH, 27  
                    MOV BX, OFFSET LETRA
                    MOV AL, 1
            SIGO:   INT 7
                    ADD BYTE PTR [BX], 20H 
                    INT 7
                    SUB BYTE PTR [BX], 20H  
                    ADD BYTE PTR [BX], 1 
                    DEC AH
                    JNZ SIGO
                    HLT
                    END
 