import 'modelos.dart';

class DadosMock {
  static const List<Socio> socios = [
    Socio(id: '1', nome: 'João da Silva', email: 'joao@email.com', cpf: '12345678900', telefone: '19999998888'),
    Socio(id: '2', nome: 'Maria Souza', email: 'maria@email.com', cpf: '98765432100', telefone: '19988887777'),
  ];

  static Socio? validarLogin(String email, String senha) {
    for (final s in socios) {
      if (s.email == email && s.cpf == senha) return s;
    }
    return null;
  }

  static const List<Evento> eventos = [
    Evento(id: 'e1', titulo: 'Jogo Guarani x Ponte Preta', tipo: 'Jogo', local: 'Estádio Brinco de Ouro', data: DateTime(2026,8,15)),
    Evento(id: 'e2', titulo: 'Encontro da Torcida', tipo: 'Confronto', local: 'Bar do Guarani', data: DateTime(2026,8,20)),
  ];

  static const List<FotoGaleria> galeria = [
    FotoGaleria(titulo: 'Jogo em Campinas', imagemUrl: 'https://via.placeholder.com/400x300/007A2E/FFFFFF?text=Guarani'),
    FotoGaleria(titulo: 'Torcida Guerreiros', imagemUrl: 'https://via.placeholder.com/400x300/2E8B57/FFFFFF?text=Torcida'),
  ];
}
