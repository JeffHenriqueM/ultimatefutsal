import 'package:flutter/material.dart';

class CampoFormulario extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator; // Função de validação

  const CampoFormulario({
    super.key,
    required this.labelText,
    this.obscureText = false,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
      ),
      validator: validator, // Aplica a função de validação
    );
  }
}
