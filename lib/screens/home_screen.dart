import 'package:flutter/material.dart';
import 'package:myapp/widgets/imc_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de IMC'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: IMCForm(),
      ),
    );
  }
}
