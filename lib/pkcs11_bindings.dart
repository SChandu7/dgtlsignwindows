import 'dart:ffi';
import 'dart:io';

final DynamicLibrary pkcs11 = Platform.isWindows
    ? DynamicLibrary.open('epass_sdk/opensc-pkcs11.dll')
    : throw UnsupportedError("Only supported on Windows");

// Bind C_Initialize from PKCS#11
typedef C_InitializeNative = Int32 Function(Pointer<Void>);
typedef C_InitializeDart = int Function(Pointer<Void>);

final C_InitializeDart cInitialize =
    pkcs11.lookupFunction<C_InitializeNative, C_InitializeDart>('C_Initialize');
