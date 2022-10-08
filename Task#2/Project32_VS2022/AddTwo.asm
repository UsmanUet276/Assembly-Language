; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example
include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
str1 TEXTEQU <"Hello World">
str2 TEXTEQU <"Assembly Language">

.data
var1 BYTE str1
size1 = ($-var1)
var2 BYTE str2
size2 = ($-var2)

.code
main proc
	mov eax,size1	
	call writeint
	
	mov eax,size2	
	call writeint

	invoke ExitProcess,0
main endp
end main