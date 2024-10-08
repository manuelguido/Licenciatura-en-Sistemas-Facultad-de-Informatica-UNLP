                               ORG  1000H
                   PARAM1     dw       1234H
                   PARAM2     dw       5abcH

				ORG  3000H
		SWAP :          MOV  BX, SP
				ADD  BX, 4
				MOV  CX, [BX]
				SUB  BX, 2
				MOV  DX, [BX]
				MOV  BX, CX
				MOV  AX, [BX]
				PUSH AX
				MOV  BX, DX
				MOV  AX, [BX]
				MOV  BX, CX
				MOV  [BX], AX
				POP AX
				MOV  BX, DX
				MOV [BX], AX
				RET

				ORG  2000H
				MOV  AX, OFFSET PARAM1
				PUSH  AX
				MOV  AX, OFFSET PARAM2
				PUSH  AX
				CALL SWAP
				HLT
				END
