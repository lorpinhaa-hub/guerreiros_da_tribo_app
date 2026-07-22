import 'package:flutter/material.dart';
import 'tema.dart';
import 'telas/login_tela.dart';

void main() {
  runApp(const GuerreirosDaTriboApp());
}

class GuerreirosDaTriboApp extends StatelessWidget {
  const GuerreirosDaTriboApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guerreiros da Tribo',
      theme: AppTema.temaPrincipal(),
      debugShowCheckedModeBanner: false,
      home: const LoginTela(),
    );
  }
}
