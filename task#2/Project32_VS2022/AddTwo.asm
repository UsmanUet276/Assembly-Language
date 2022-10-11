; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example
include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
array1 byte "Hello World",0
array2 byte "ABC GHI XYZ"
.code
main proc


	mov esi,0 
	mov ecx,SIZEOF array1 
L1:
	mov al,array1[esi] 
	mov ah,array2[esi]
    mov array2[esi],al 
	mov array1[esi],ah
	inc esi 
	loop L1 
	
	mov edx, OFFSET array1
	call WriteString 
	invoke ExitProcess,0
main endp
end main