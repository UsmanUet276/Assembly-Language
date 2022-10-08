; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
var DWORD 0
.code
main proc
	mov var, 10
	sub var, 7
	mov eax, var
	mov var, 5
	add var, 6
	mul var
	mov var, 9
	mul var
	call writeint

	invoke ExitProcess,0
main endp
end main