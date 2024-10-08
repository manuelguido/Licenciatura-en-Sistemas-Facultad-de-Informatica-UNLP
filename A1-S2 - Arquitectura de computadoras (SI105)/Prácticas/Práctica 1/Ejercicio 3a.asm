      ORG 1000H
NUM1  DW  9234H
      DW  1111H
NUM2  DW  9234H
      DW  2222H

      ORG 2000H
      MOV  AX, NUM1
      MOV  CX, NUM2
      MOV  DX, NUM1+2
      MOV  BX, NUM2+2
      ADD  AX, CX
      ADC  DX, BX
      HLT
      END

