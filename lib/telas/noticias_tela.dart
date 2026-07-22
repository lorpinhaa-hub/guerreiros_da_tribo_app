import 'package:flutter/material.dart';
import '../tema.dart';

class NoticiasTela extends StatelessWidget {
  const NoticiasTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NOTÍCIAS')),
      body: const Center(child: Text('Em breve novidades!', style: TextStyle(color: AppTema.branco, fontSize: 18))),
    );
  }
}
