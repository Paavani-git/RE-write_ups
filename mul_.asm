BITS 32

extern printf
extern scanf

section .data
	fmt: db "%d", 0
	
	pro: db"product is %d",10,0
	rem: db"reminder is %d",10,0
	

section .text
	global main

	main:
	push ebp
	mov ebp, esp
	sub esp, 0x10

	lea eax, [ebp-0x4]
	push eax
	push fmt1
	call scanf

	lea edx, [ebp-0x8]
	push edx
	push fmt2
	call scanf

	mov edx, dword [ebp-0x4]
	mov eax, dword [ebp-0x8]
	mul edx
	mov dword [ebp-0x8], eax
	
	push dword [ebp-0x8]
	push pro
	call printf
	



	


	leave
	ret
