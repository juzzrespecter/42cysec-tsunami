	section	.text
_shellcode_init:
	xor	eax,eax
	jmp	_shellcode_get_cmd
_shellcode:
	pop	ebx		; referencia a "gnome-calculatorA"
	mov	[ebx+16],al	; "gnome-calculator\0"
	mov	[ebx+17],ebx	; "gnome-calculator\0"&"gnome-calculator\0"
	mov	[ebx+35],eax	; "gnome-calculator\0"&"gnome-calculator\0"[...]\0\0\0\0
	lea	ecx,[ebx+16]	; cargamos [ebx+16] como segundo argumento
	lea	edx,[ebx+35]	; cargamos [ebx+32] como tercer argumento
	mov	al,11		; execve
	int	0x80		; call
	mov	al,1
	xor	ebx,ebx
	int	0x80		; salida limpia

_shellcode_get_cmd:
	call	_shellcode
	db	"gnome-calculatorA"
