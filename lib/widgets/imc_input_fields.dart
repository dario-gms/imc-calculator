import 'package:flutter/material.dart';
import 'package:myapp/utils/imc_utils.dart';

class IMCInputFields extends StatelessWidget {
  final TextEditingController heightController;
  final TextEditingController weightController;

  const IMCInputFields({
    super.key,
    required this.heightController,
    required this.weightController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          controller: heightController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: IMCUtils.heightLabel),
          validator: (value) {
            if (value!.isEmpty) {
              return IMCUtils.heightValidationMessage;
            }
            return null;
          },
        ),
        TextFormField(
          controller: weightController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: IMCUtils.weightLabel),
          validator: (value) {
            if (value!.isEmpty) {
              return IMCUtils.weightValidationMessage;
            }
            return null;
          },
        ),
      ],
    );
  }
}
