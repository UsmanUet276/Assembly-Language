; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example
include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc
	mov eax, 5
	imul eax, 4
	mov ebx, 3
	add ebx, 7
	imul ebx, 21
	sub eax, ebx
	call writeint

	invoke ExitProcess,0
main endp
end main