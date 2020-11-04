TITLE s191588 HW 02

; Program Description: Calculate 30 * x1 + 48 * x2 + 14 * x3
; Author: 20191588 ¹Ú¼ºÁø
; Creation Date: 2020/5/3
; input: x1, x2, x3
; ouput: 30 * x1 + 48 * x2 + 14 * x3

Include Irvine32.inc
Include CSE3030_PHW02.inc

.code
main PROC

	;Calculate 30 * x1
	mov ebx, x1		; EBX = x1
	add ebx, x1		; EBX = x1 + x1 = 2 * x1
	mov ecx, ebx	; ECX = 2 * x1
	
	mov edx, ecx	; EDX = 2 * x1
	
	add ebx, ecx	; EBX = 2 * x1 + 2 * x1 = 4 * x1
	mov ecx, ebx	; ECX = 4 * x1
	add ebx, ecx	; EBX = 4 * x1 + 4 * x1 = 8 * x1
	mov ecx, ebx	; ECX = 8 * x1
	add ebx, ecx	; EBX = 8 * x1 + 8 * x1 = 16 * x1
	mov ecx, ebx	; ECX = 16 * x1
	add ebx, ecx	; EBX = 16 * x1 + 16 * x1 = 32 * x1
	
	sub ebx, edx	; EBX = 32 * x1 - 2 * x1 = 30 * x1
	
	mov eax, ebx	; EAX = 30 * x1

	;Calculate 30 * x1 + 48 * x2
	mov ebx, x2		; EBX = x2
	add ebx, x2		; EBX = x2 + x2 = 2 * x2
	mov ecx, ebx	; ECX = 2 * x2
	add ebx, ecx	; EBX = 2 * x2 + 2 * x2 = 4 * x2
	mov ecx, ebx	; ECX = 4 *x2
	add ebx, ecx	; EBX = 4 * x2 + 4 * x2 = 8 * x2
	mov ecx, ebx	; ECX = 8 * x2
	add ebx, ecx	; EBX = 8 * x2 + 8 * x2 = 16 * x2
	mov ecx, ebx	; ECX = 16 * x2
	add ebx, ecx	; EBX = 16 * x2 + 16 * x2 = 32 * x2
	add ebx, ecx	; EBX = 32 * x2 + 16 * x2 = 48 * x2
	
	add eax, ebx	; EAX = 30 * x1 + 48 * x2
	
	;Calculate 30 * x1 + 48 * x2 + 14 * x3
	mov ebx, x3		; EBX = x3
	add ebx, x3		; EBX = x3 + x3 = 2 * x3
	mov ecx, ebx	; ECX = 2 * x3

	mov edx, ecx	; EDX = 2 * x3

	add ebx, ecx	; EBX = 2 * x3 + 2 * x3 = 4 * x3
	mov ecx, ebx	; ECX = 4 * x3
	add ebx, ecx	; EBX = 4 * x3 + 4 * x3 = 8 * x3
	mov ecx, ebx	; ECX = 8 * x3
	add ebx, ecx	; EBX = 8 * x3 +  8 * x3 = 16 * x3
	
	sub ebx, edx	; EBX = 16 * x3 - 2 * x3 = 14 * x3
	
	add eax, ebx	; EAX = 30 * x1 + 48 * x2 + 14 * x3
	
	call writeint	; Print EAX = 30 * x1 + 48 * x2 + 14 * x3

	exit
main ENDP
END main