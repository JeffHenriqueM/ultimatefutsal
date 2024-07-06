import 'package:flutter/material.dart';
import 'package:ultimatefutsal/utils/validadores.dart';
import 'package:ultimatefutsal/widgets/app_bar_customizado.dart';
import 'package:ultimatefutsal/widgets/campo_formulario.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>(); // Chave para o formulário
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustomizado(titulo: 'Login'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // Associe a chave ao formulário
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CampoFormulario(
                labelText: 'Email',
                controller: _emailController,
                validator: Validadores.validarEmail,
              ),
              const SizedBox(height: 16),
              CampoFormulario(
                labelText: 'Senha',
                obscureText: true,
                controller: _senhaController,
                validator: Validadores.validarSenha,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Lógica de login se o formulário for válido
                  }
                },
                child: const Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
