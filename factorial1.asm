factorial(int):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], edi
        cmp     DWORD PTR [rbp-4], 1
        je      .L2
        cmp     DWORD PTR [rbp-4], 0
        je      .L2
        mov     eax, DWORD PTR [rbp-4]
        sub     eax, 1
        mov     edi, eax
        call    factorial(int)
        imul    eax, DWORD PTR [rbp-4]
        jmp     .L3
.L2:
        mov     eax, 1
.L3:
        leave
        ret
.LC0:
        .string "Factorial of %d is %d"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], 5
        mov     eax, DWORD PTR [rbp-4]
        mov     edi, eax
        call    factorial(int)
        mov     edx, eax
        mov     eax, DWORD PTR [rbp-4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     eax, 0
        leave
        ret
__static_initialization_and_destruction_0(int, int):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], edi
        mov     DWORD PTR [rbp-8], esi
        cmp     DWORD PTR [rbp-4], 1
        jne     .L9
        cmp     DWORD PTR [rbp-8], 65535
        jne     .L9
        mov     edi, OFFSET FLAT:_ZStL8__ioinit
        call    std::ios_base::Init::Init() [complete object constructor]
        mov     edx, OFFSET FLAT:__dso_handle
        mov     esi, OFFSET FLAT:_ZStL8__ioinit
        mov     edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
        call    __cxa_atexit
.L9:
        nop
        leave
        ret
_GLOBAL__sub_I_factorial(int):
        push    rbp
        mov     rbp, rsp
        mov     esi, 65535
        mov     edi, 1
        call    __static_initialization_and_destruction_0(int, int)
        pop     rbp
        ret
