title Laboratory 1 : Evaluating Simple Airthmetic Expressions
Include Irvine32.inc
	P EQU 8d
.data
	x SDWORD 16d
	y SDWORD 154d
	z SDWORD -17d
	w SDWORD ?

.code
main PROC
	;w = (x + y) – (50d + x + y + z - p)
	MOV eax,x ;EAX=x
	ADD eax,y ;EAX=x+y

	MOV ebx,eax ;EBX=x+y
	ADD ebx,50 ;EBX=x+y+50
	ADD ebx,z ;EBX=x+y50+Z
	SUB ebx,p ;EBX=x+y50+Z-P
	SUB eax,ebx ;EAX=(x + y) – (50d + x + y + z - p)
	MOV w,eax ;w=(x + y) – (50d + x + y + z - p)
	call WriteInt
	exit
main ENDP
END main 