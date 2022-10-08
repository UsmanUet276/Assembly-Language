; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example
include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc
	mov	eax,12	
	mov	ebx,6	
	
	add	eax,ebx
	
	mov	ecx,9				
	mov	edx,3	
	
	add	ecx,edx
	
	sub	eax,ecx
	
	call writeint

	invoke ExitProcess,0
main endp
end main