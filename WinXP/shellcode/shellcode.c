unsigned char sc[] = {
  0x31, 0xc0, 0x50, 0xbb, 0x63, 0x61, 0x6c, 0x63, 0x53, 0x89, 0xe3, 0x53,
  0xe8, 0xa9, 0x23, 0x86, 0x7c
};
unsigned int sc_len = 17;

int main()
{
    void (*f)() = (void (*)())sc;
    f();
}
