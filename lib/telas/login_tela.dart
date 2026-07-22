import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../tema.dart';
import '../dados/dados_mock.dart';
import 'cadastro_tela.dart';
import 'home_tela.dart';

class LoginTela extends StatefulWidget {
  const LoginTela({super.key});

  @override
  State<LoginTela> createState() => _LoginTelaState();
}

class _LoginTelaState extends State<LoginTela> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  bool _carregando = false;

  Future<void> _fazerLogin() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _carregando = true);

    final socio = DadosMock.validarLogin(
      _emailController.text.trim(),
      _senhaController.text.trim(),
    );

    if (socio != null) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('socio_logado_id', socio.id);
      await prefs.setString('socio_logado_nome', socio.nome);
      await prefs.setString('socio_logado_email', socio.email);

      if (!mounted) return;
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) => const HomeTela()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('E-mail ou senha incorretos! (Senha = CPF)'), backgroundColor: Colors.red),
      );
    }
    setState(() => _carregando = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 40),
                Image.asset('assets/imagens/logo.jpeg', height: 140, fit: BoxFit.contain),
                const SizedBox(height: 16),
                const Text('GUERREIROS DA TRIBO', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: AppTema.branco, letterSpacing: 1.2), textAlign: TextAlign.center),
                const Text('Guarani F.C.', style: TextStyle(fontSize: 18, color: AppTema.branco, fontStyle: FontStyle.italic), textAlign: TextAlign.center),
                const SizedBox(height: 40),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: AppTema.branco),
                  decoration: const InputDecoration(labelText: 'E-mail', prefixIcon: Icon(Icons.email, color: AppTema.branco)),
                  validator: (v) => v!.isEmpty ? 'Informe seu e-mail' : !v.contains('@') ? 'E-mail inválido' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _senhaController,
                  obscureText: true,
                  style: const TextStyle(color: AppTema.branco),
                  decoration: const InputDecoration(labelText: 'Senha (CPF)', prefixIcon: Icon(Icons.lock, color: AppTema.branco)),
                  validator: (v) => v!.isEmpty ? 'Informe sua senha' : null,
                ),
                const SizedBox(height: 24),
                _carregando
                  ? const Center(child: CircularProgressIndicator(color: AppTema.branco))
                  : ElevatedButton(onPressed: _fazerLogin, child: const Text('ENTRAR', style: TextStyle(fontSize: 16))),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (c) => const CadastroTela())),
                  child: const Text('Não tem conta? Cadastre-se aqui', style: TextStyle(color: AppTema.branco, decoration: TextDecoration.underline, fontSize: 15)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
