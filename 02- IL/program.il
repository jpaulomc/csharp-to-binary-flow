.class private auto ansi beforefieldinit Program
	extends [System.Runtime]System.Object
{
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)
	// Methods
	.method private hidebysig static 
		void '<Main>$' (
			string[] args
		) cil managed 
	{
		// Method begins at RVA 0x2050
		// Header size: 12
		// Code size: 32 (0x20)
		.maxstack 2
		.entrypoint
		.locals init (
			[0] int32 a,
			[1] int32 b,
			[2] int32 soma
		)

		IL_0000: ldc.i4.5
		IL_0001: stloc.0
		IL_0002: ldc.i4.2
		IL_0003: stloc.1
		IL_0004: ldloc.0
		IL_0005: ldloc.1
		IL_0006: add
		IL_0007: stloc.2
		IL_0008: ldstr "Soma: "
		IL_000d: ldloca.s 2
		IL_000f: call instance string [System.Runtime]System.Int32::ToString()
		IL_0014: call string [System.Runtime]System.String::Concat(string, string)
		IL_0019: call void [System.Console]System.Console::WriteLine(string)
		IL_001e: nop
		IL_001f: ret
	} // end of method Program::'<Main>$'

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x207c
		// Header size: 1
		// Code size: 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: nop
		IL_0007: ret
	} // end of method Program::.ctor

} // end of class Program
