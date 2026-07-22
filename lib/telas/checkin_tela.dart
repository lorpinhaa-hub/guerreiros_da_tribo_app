import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../tema.dart';
import '../dados/modelos.dart';
import '../dados/dados_mock.dart';

class CheckinTela extends StatefulWidget {
  const CheckinTela({super.key});

  @override
  State<CheckinTela> createState() => _CheckinTelaState();
}

class _CheckinTelaState extends State<CheckinTela> {
  Evento? _eventoSelecionado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CHECK-IN')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Selecione o evento para fazer check-in:', style: TextStyle(color: AppTema.branco, fontSize: 16)),
            const SizedBox(height: 16),
            ...DadosMock.eventos.map((e) => Card(
              margin: const EdgeInsets.only(bottom:12),
              child: RadioListTile<Evento>(
                value: e,
                groupValue: _eventoSelecionado,
                onChanged: (v) => setState(()=> _eventoSelecionado = v),
                title: Text(e.titulo, style:const TextStyle(color:AppTema.branco, fontWeight:FontWeight.w600)),
                subtitle: Text('${e.tipo} • ${e.local} • ${e.data.day}/${e.data.month}', style:TextStyle(color:AppTema.branco.withOpacity(0.8))),
                activeColor: AppTema.verdeClaro,
              ),
            )),
            const SizedBox(height:24),
            if (_eventoSelecionado != null) Card(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    const Text('Seu QR Code de check-in:', style: TextStyle(color: AppTema.branco, fontSize: 16)),
                    const SizedBox(height:16),
                    QrImageView(data: 'checkin:${_eventoSelecionado!.id}:${DateTime.now().millisecondsSinceEpoch}', version: QrVersions.auto, size:200, backgroundColor:AppTema.branco),
                    const SizedBox(height:16),
                    Text(_eventoSelecionado!.titulo, style:const TextStyle(color:AppTema.branco, fontSize:18, fontWeight:FontWeight.bold), textAlign:TextAlign.center),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
