	section	.text
	global main
main:
	jmp	_shellcode_get_cmd
_shellcode:
	pop	ebx		; referencia a "gnome-calculatorA"
	xor	eax,eax
	mov	[ebx+16],al	; "gnome-calculator\0"
	mov	[ebx+17],ebx	; "gnome-calculator\0"&"gnome-calculator\0"
	mov	[ebx+21],eax	; "gnome-calculator\0"&"gnome-calculator\0"\0\0\0\0
	lea	ecx,[ebx+17]	; cargamos [ebx+17] como segundo argumento
	lea	edx,[ebx+21]	; cargamos [ebx+33] como tercer argumento
	mov	al,11		; execve
	int	0x80		; call
	xor	eax,eax
	mov	al,1
	xor	ebx,ebx
	int	0x80		; salida limpia

_shellcode_get_cmd:
	call	_shellcode
	db	"gnome-calculatorABBBBCCCC"
