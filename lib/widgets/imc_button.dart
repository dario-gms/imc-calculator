import 'package:flutter/material.dart';

class IMCButton extends StatelessWidget {
  final VoidCallback onPressed;

  const IMCButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Calcular IMC'),
    );
  }
}
