import 'package:flutter/material.dart';
import '../tema.dart';
import 'noticias_tela.dart';
import 'galeria_tela.dart';
import 'checkin_tela.dart';
import 'socios_tela.dart';

class HomeTela extends StatelessWidget {
  const HomeTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('INÍCIO')),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: [
          _botaoMenu(context, 'NOTÍCIAS', Icons.newspaper, const NoticiasTela()),
          _botaoMenu(context, 'GALERIA', Icons.image, const GaleriaTela()),
          _botaoMenu(context, 'CHECK-IN', Icons.qr_code, const CheckinTela()),
          _botaoMenu(context, 'SÓCIOS', Icons.people, const SociosTela()),
        ],
      ),
    );
  }

  Widget _botaoMenu(BuildContext context, String titulo, IconData icone, Widget tela) {
    return Card(
      child: InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => tela)),
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icone, size: 48, color: AppTema.branco),
            const SizedBox(height: 12),
            Text(titulo, style: const TextStyle(color: AppTema.branco, fontSize: 16, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
