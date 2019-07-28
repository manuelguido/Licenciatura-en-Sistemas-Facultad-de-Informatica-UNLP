        ORG  1000H
NUM1  DW  9234H
      DW  1111H
NUM2  DW  9234H
      DW  2222H

        ORG  3000H
SUM32:  ADD AX,CX
        ADC DX,BX
        RET

        ORG  2000H
        MOV AX,NUM1
        MOV DX,NUM1+2
        MOV CX,NUM2
        MOV BX,NUM2+2
        CALL SUM32
        HLT
        END
