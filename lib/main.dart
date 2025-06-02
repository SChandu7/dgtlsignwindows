import 'package:flutter/material.dart';
import 'pkcs11_bindings.dart';
import 'dart:ffi';

void main() {
  runApp(MyApp());
  initializePKCS11();
}

void initializePKCS11() {
  try {
    final result = cInitialize(nullptr);
    if (result == 0) {
      print('✅ C_Initialize succeeded.');
    } else {
      print('❌ C_Initialize failed with error code: $result');
    }
  } catch (e) {
    print('❌ Error loading DLL or calling C_Initialize: $e');
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PKCS11 Flutter Test',
      home: Scaffold(
        appBar: AppBar(title: Text('PKCS#11 Token Test')),
        body: Center(child: Text('Check console output for token init')),
      ),
    );
  }
}
