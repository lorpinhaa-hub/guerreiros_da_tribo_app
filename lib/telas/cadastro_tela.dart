import 'package:flutter/material.dart';
import '../tema.dart';

class CadastroTela extends StatelessWidget {
  const CadastroTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CADASTRO')),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/imagens/fundo.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(AppTema.verdeEscuro.withOpacity(0.85), BlendMode.darken),
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Cadastre-se para ser sócio', style: TextStyle(color: AppTema.branco, fontSize: 18), textAlign: TextAlign.center),
              const SizedBox(height: 20),
              const TextField(decoration: InputDecoration(labelText: 'Nome completo', labelStyle: TextStyle(color: AppTema.branco)), style: TextStyle(color: AppTema.branco)),
              const SizedBox(height: 12),
              const TextField(decoration: InputDecoration(labelText: 'E-mail', labelStyle: TextStyle(color: AppTema.branco)), style: TextStyle(color: AppTema.branco)),
              const SizedBox(height: 12),
              const TextField(decoration: InputDecoration(labelText: 'CPF', labelStyle: TextStyle(color: AppTema.branco)), style: TextStyle(color: AppTema.branco)),
              const SizedBox(height: 12),
              const TextField(decoration: InputDecoration(labelText: 'Telefone', labelStyle: TextStyle(color: AppTema.branco)), style: TextStyle(color: AppTema.branco)),
              const SizedBox(height: 24),
              ElevatedButton(onPressed: (){}, child: const Text('CADASTRAR')),
            ],
          ),
        ),
      ),
    );
  }
}
