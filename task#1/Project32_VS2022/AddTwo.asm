; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example
include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
arr word 50 dup(5)
sizeArr word 0
lengthArr word 0
sum word 0
avg word 0
.code
main proc
   
	 mov sizeArr, SIZEOF arr
	movzx eax , sizeArr
	call writeint
	
	mov lengthArr, LENGTHOF arr
	movzx eax , lengthArr
	call writeint
	
	mov esi, 100
	movzx eax, arr[esi]
	call writeint
	

	
	;sum of array
	mov esi, 0
	movzx ecx, lengthArr
	mov sum, 0
	loop1:
	mov ax, arr[esi]
		add sum, ax
		add esi, 2
		loop loop1
	movzx eax, sum
	call writeint
	
	movzx eax, sum
	movzx edx, lengthArr
	movzx ax, al
	idiv  dl
	movzx eax, ax
	call writeint
	invoke ExitProcess,0
main endp
end main