class Socio {
  final String id;
  final String nome;
  final String email;
  final String cpf;
  final String telefone;

  const Socio({
    required this.id,
    required this.nome,
    required this.email,
    required this.cpf,
    required this.telefone,
  });
}

class Evento {
  final String id;
  final String titulo;
  final String tipo;
  final String local;
  final DateTime data;

  const Evento({
    required this.id,
    required this.titulo,
    required this.tipo,
    required this.local,
    required this.data,
  });
}

class FotoGaleria {
  final String titulo;
  final String imagemUrl;

  const FotoGaleria({
    required this.titulo,
    required this.imagemUrl,
  });
}
