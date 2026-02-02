; Core CLR 9.0.1125.51716 on x86

Program..ctor()
    L0000: push ebp
    L0001: mov ebp, esp
    L0003: push edi
    L0004: push eax
    L0005: mov [ebp-8], ecx
    L0008: cmp dword ptr [0x2745c140], 0
    L000f: je short L0016
    L0011: call 0x72d310c0
    L0016: mov ecx, [ebp-8]
    L0019: call dword ptr [0xc4d6388]
    L001f: nop
    L0020: nop
    L0021: pop ecx
    L0022: pop edi
    L0023: pop ebp
    L0024: ret

Program.<Main>$(System.String[])
    L0000: push ebp
    L0001: mov ebp, esp
    L0003: sub esp, 0x1c
    L0006: vxorps xmm4, xmm4, xmm4
    L000a: vmovdqu [ebp-0x1c], xmm4
    L000f: xor eax, eax
    L0011: mov [ebp-0xc], eax
    L0014: mov [ebp-8], eax
    L0017: mov [ebp-4], ecx
    L001a: cmp dword ptr [0x2745c140], 0
    L0021: je short L0028
    L0023: call 0x72d310c0
    L0028: mov dword ptr [ebp-8], 5
    L002f: mov dword ptr [ebp-0xc], 2
    L0036: mov eax, [ebp-8]
    L0039: add eax, [ebp-0xc]
    L003c: mov [ebp-0x10], eax
    L003f: mov eax, [0x9624398]
    L0044: mov [ebp-0x14], eax
    L0047: lea ecx, [ebp-0x10]
    L004a: call dword ptr [0xcd273c0]
    L0050: mov [ebp-0x18], eax
    L0053: mov ecx, [ebp-0x14]
    L0056: mov edx, [ebp-0x18]
    L0059: call dword ptr [0x74b76a8]
    L005f: mov [ebp-0x1c], eax
    L0062: mov ecx, [ebp-0x1c]
    L0065: call dword ptr [0x114f43a8]
    L006b: nop
    L006c: nop
    L006d: mov esp, ebp
    L006f: pop ebp
    L0070: ret