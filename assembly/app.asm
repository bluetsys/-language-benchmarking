GLOBAL  main
EXTERN  printf

SECTION .text
main:
	MOV ECX, 100000000
	XOR rax, rax
	XOR rbx, rbx

do:
	INC rax
	ADD rbx, rax

    LOOP do

	LEA     rdi, [format]
	MOV     rdi, format					; 파라메타1
	MOV     rsi, split					; 파라메타2
	MOV     rdx, title					; 파라메타3
	MOV     rcx, rbx					; 파라메타4
	MOV     r8, title2					; 파라메타5
	XOR		rax, rax
	CALL    printf

SECTION .data
	format: 	DB 	"%s%s%ld%s", 10, 0
	split: 		DB 	"==========================", 10, 0
	title: 		DB 	"assembly", 10, 0
	title2: 	DB 	"0", 10, 0
