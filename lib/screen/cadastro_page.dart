import 'package:flutter/material.dart';
import 'package:ultimatefutsal/utils/validadores.dart';
import 'package:ultimatefutsal/widgets/app_bar_customizado.dart';
import 'package:ultimatefutsal/widgets/campo_formulario.dart';

class CadastroPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustomizado(titulo: 'Cadastro'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: LayoutBuilder(
            // Para responsividade
            builder: (context, constraints) {
              return constraints.maxWidth > 600
                  ? _buildWideLayout()
                  : _buildNarrowLayout();
            },
          ),
        ),
      ),
    );
  }

  Widget _buildWideLayout() {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CampoFormulario(
                labelText: 'Nome',
                controller: _nomeController,
                validator: (value) => value!.isEmpty ? 'Insira seu nome' : null,
              ),
              const SizedBox(height: 16),
              CampoFormulario(
                labelText: 'Email',
                controller: _emailController,
                validator: Validadores.validarEmail,
              ),
            ],
          ),
        ),
        const SizedBox(width: 32),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                    // Lógica de cadastro
                  }
                },
                child: const Text('Cadastrar'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildNarrowLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CampoFormulario(
          labelText: 'Nome',
          controller: _nomeController,
          validator: (value) => value!.isEmpty ? 'Insira seu nome' : null,
        ),
        const SizedBox(height: 16),
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
              // Lógica de cadastro
            }
          },
          child: const Text('Cadastrar'),
        ),
      ],
    );
  }
}
