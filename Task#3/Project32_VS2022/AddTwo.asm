; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example
include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

str1 EQU <"Monday">
str2 EQU <"Tuesday">
str3 EQU <"Wednesday">
str4 EQU <"Thursday">
str5 EQU <"Friday">
str6 EQU <"Saturday">
str7 EQU <"Sunday">

.data
var1 db str1 , str2 , str3 , str4 , str5 , str6 , str7
daySize = ( $ - var1 ) / 7

.code
main proc
	mov	eax, daySize
	call writeint

	invoke ExitProcess,0
main endp
end main