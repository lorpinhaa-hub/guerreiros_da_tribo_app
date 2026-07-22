import 'package:flutter/material.dart';
import '../tema.dart';

class SociosTela extends StatelessWidget {
  const SociosTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SÓCIOS')),
      body: const Center(child: Text('Lista de sócios em construção', style: TextStyle(color: AppTema.branco, fontSize: 18))),
    );
  }
}
