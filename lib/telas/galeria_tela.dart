import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../tema.dart';
import '../dados/dados_mock.dart';

class GaleriaTela extends StatelessWidget {
  const GaleriaTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GALERIA')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          itemCount: DadosMock.galeria.length,
          itemBuilder: (c, i) {
            final f = DadosMock.galeria[i];
            return Card(
              margin: const EdgeInsets.all(4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                    child: Image.network(f.imagemUrl, fit: BoxFit.cover, height: 120, errorBuilder: (_,__,___) => Container(height:120, color:AppTema.verdeClaro, child:const Icon(Icons.image, color:AppTema.branco, size:40))),
                  ),
                  Padding(padding: const EdgeInsets.all(8), child: Text(f.titulo, style:const TextStyle(color:AppTema.branco, fontSize:14, fontWeight:FontWeight.w600), textAlign:TextAlign.center)),
                ],
              ),
            );
          },
          staggeredTileBuilder: (_) => StaggeredTile.fit(1),
        ),
      ),
    );
  }
}
