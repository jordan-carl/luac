MOV 09, #0 
E1:    
MOV 044, #0 
MOV A, 044 
CJNE A, #0, E2 
JMP E3
E2:    
MOV A, 09 
ADD A, #1 
MOV 011, A 
MOV 09, 011 
MOV A, #9 
SUBB A, 09 
MOV A, #0 
RLC A 
MOV 045, A 
MOV A, 045 
CJNE A, #0, E4 
JMP E5
E4:    
MOV 09, #0 
JMP E6
E5:    
E6:    
MOV A, 09 
SUBB A, #0 
MOV 046, A 
MOV A, 046 
JZ E7 
JMP E8
E7:    
MOV P1, #192 
JMP E9
E8:    
MOV A, 09 
SUBB A, #1 
MOV 047, A 
MOV A, 047 
JZ E10 
JMP E11
E10:    
MOV P1, #249 
JMP E12
E11:    
MOV A, 09 
SUBB A, #2 
MOV 048, A 
MOV A, 048 
JZ E13 
JMP E14
E13:    
MOV P1, #164 
JMP E15
E14:    
MOV A, 09 
SUBB A, #3 
MOV 049, A 
MOV A, 049 
JZ E16 
JMP E17
E16:    
MOV P1, #176 
JMP E18
E17:    
MOV A, 09 
SUBB A, #4 
MOV 050, A 
MOV A, 050 
JZ E19 
JMP E20
E19:    
MOV P1, #153 
JMP E21
E20:    
MOV A, 09 
SUBB A, #5 
MOV 051, A 
MOV A, 051 
JZ E22 
JMP E23
E22:    
MOV P1, #146 
JMP E24
E23:    
MOV A, 09 
SUBB A, #6 
MOV 052, A 
MOV A, 052 
JZ E25 
JMP E26
E25:    
MOV P1, #130 
JMP E27
E26:    
MOV A, 09 
SUBB A, #7 
MOV 053, A 
MOV A, 053 
JZ E28 
JMP E29
E28:    
MOV P1, #248 
JMP E30
E29:    
MOV A, 09 
SUBB A, #8 
MOV 054, A 
MOV A, 054 
JZ E31 
JMP E32
E31:    
MOV P1, #128 
JMP E33
E32:    
MOV P1, #144 
E33:    
E30:    
E27:    
E24:    
E21:    
E18:    
E15:    
E12:    
E9:    
JMP E1
E3:    
END
