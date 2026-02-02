# csharp-to-binary-flow
![fluxo.png](https://github.com/jpaulomc/csharp-to-binary-flow/blob/master/fluxo.png)

Meu objetivo nessa implementação foi navegar por águas mais profundas rsrs, saindo do conforto que c# nos traz, entendendo o trabalho do Roslyn e JIT por debaixo dos panos, e consegui, chequei até o arquivo binário literalmente.

Para este estudo, utilizei um código minimalista para facilitar a rastreabilidade entre as camadas:

C#
// 01-Source/Program.cs
```
using System;

int a = 5;
int b = 2;
var soma = a + b;
Console.WriteLine("Soma: " + soma); 
```

Nível 1: IL (Intermediate Language)
O .NET compila o C# para uma linguagem intermediária baseada em Pilha (Stack-based). É aqui que a portabilidade acontece pois isso é feito independente da linguagem e do processador ao qual o programa ira rodar.

![ProgramIL.png](https://github.com/jpaulomc/csharp-to-binary-flow/blob/master/02-IL/ProgramIL.png)

Utilizei como ferramenta para analizar o program.il o ILSpy Fresh

Destaque do Código IL:
```
Snippet de código
IL_0000: ldc.i4.5   // Empilha o 5 (Balcão)
IL_0001: stloc.0    // Guarda na gaveta [0] (Variável a)
IL_0004: ldloc.0    // Tira da gaveta e põe no balcão
IL_0005: ldloc.1    // Tira o outro da gaveta e põe no balcão
IL_0006: add        // O operário soma o que está no balcão
```

Nível 2: Assembly (JIT Compilation)
O JIT (Just-In-Time) traduz o IL para o conjunto de instruções específico do processador (x86/x64). Aqui sim o processador é considerado, o conceito de "balcão" (pilha) é substituído por "bolsos" (Registradores).
Aqui utilizei como ferramenta o SharpLab.io

![assembly.png](https://github.com/jpaulomc/csharp-to-binary-flow/blob/master/03-Assembly/assembly.png)

Destaque do Assembly:
```
Snippet de código
L0028: mov dword ptr [ebp-8], 5  ; Armazenamento na RAM
L0036: mov eax, [ebp-8]          ; Move para o registrador EAX (Bolso)
L0039: add eax, [ebp-0xc]        ; Soma direta no hardware
```

Nível 3: Binário (Hexadecimal)
A representação final que o hardware consome. Cada instrução Assembly corresponde a um conjunto de bytes.
Ferramenta: HxD / Native AOT

![binary.png](https://github.com/jpaulomc/csharp-to-binary-flow/blob/master/04-Binary/binary.png)

A "cara" do executável: 83 C0 02 -> Esta sequência de bytes diz ao processador: "Adicione o valor 2 ao registrador EAX".

Ferramentas Utilizadas
ILSpy: Para inspeção do código gerenciado (IL).
SharpLab.io: Para visualização do código gerado pelo JIT em tempo real.
HxD: Para análise dos bytes no executável nativo.
Native AOT: Para gerar binários sem dependência de runtime externa.

O que eu aprendi?
Abstração não é mágica: O C# facilita a vida, mas o .NET faz um trabalho pesado de gerenciamento de memória e pilha, JIT é um Otimizador: O compilador em tempo real consegue simplificar contas e organizar os registradores para máxima performance.

Portabilidade vs. Performance: O IL garante que o código rode em qualquer lugar, enquanto o Assembly final garante que ele rode rápido no chip específico.
