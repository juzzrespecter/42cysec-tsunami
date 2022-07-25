	section	.text
	global main
main:
	jmp	_shellcd_db
_shellcd:	
	xor	eax,eax
	pop	ebx		; "gnome-calculatorABBBBCCCC"
	mov	[ebx+16],al	; "gnome-calculator\0BBBBCCCC
	mov	[ebx+17],ebx	; "gnome-calculator\0"&"gnome-calculator\0CCCC
	mov	[ebx+21],eax	; "gnome-calculator\0"&"gnome-calculator\0"\0\0\0\0
	lea	ecx,[ebx+17]	; cargamos [ebx+17] como segundo argumento
	lea	edx,[ebx+21]	; cargamos [ebx+33] como tercer argumento
	mov	al,11		; execve
	int	0x80		; call
	xor	eax,eax
	mov	al,1
	xor	ebx,ebx
	int	0x80		; salida limpia
_shellcd_db:
	call	_shellcd
	db	"gnome-calculatorABBBBCCCC"
