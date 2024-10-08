        ORG  1000H
NUM1  DW  9234H
      DW  1111H
NUM2  DW  9234H
      DW  2222H

        ORG  3000H
SUM32:  PUSH BX
        MOV BX,SP
        ADD BX,10
        MOV AX,[BX]
        SUB BX,2
        MOV DX,[BX]
        SUB BX,2
        MOV CX,[BX]
        SUB BX,2
        ADD AX, CX
        ADC DX,[BX]
        POP BX
        RET

        ORG  2000H
        MOV AX,NUM1
        PUSH AX
        MOV AX,NUM1+2
        PUSH AX
        MOV AX,NUM2
        PUSH AX
        MOV AX,NUM2+2
        PUSH AX
        CALL SUM32
        HLT
        END
