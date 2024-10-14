import 'package:flutter/material.dart';
import 'package:myapp/models/imc_classification.dart';
import 'package:myapp/utils/imc_utils.dart';

class IMCResult extends StatelessWidget {
  final double imc;

  const IMCResult({super.key, required this.imc});

  @override
  Widget build(BuildContext context) {
    String classification = classifyIMC(imc);

    return Column(
      children: [
        Text(
          '${IMCUtils.imcLabel}${IMCUtils.formatIMC(imc)}',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 10),
        Text(
          '${IMCUtils.classificationLabel}$classification',
          style: const TextStyle(fontSize: 20, color: Colors.blueAccent),
        ),
      ],
    );
  }
}
