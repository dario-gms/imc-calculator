import 'package:flutter/material.dart';
import 'package:myapp/models/imc_calculator.dart';
import 'package:myapp/utils/imc_utils.dart';
import 'imc_input_fields.dart';
import 'imc_result.dart';

class IMCForm extends StatefulWidget {
  const IMCForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _IMCFormState createState() => _IMCFormState();
}

class _IMCFormState extends State<IMCForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double? _imc;

  void _calculateIMC() {
    if (_formKey.currentState!.validate()) {
      double heightInCm = double.parse(_heightController.text);
      double weight = double.parse(_weightController.text);

      double heightInMeters = heightInCm / 100;

      IMCCalculator imcCalculator =
          IMCCalculator(height: heightInMeters, weight: weight);
      setState(() {
        _imc = imcCalculator.calculate();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          IMCInputFields(
            heightController: _heightController,
            weightController: _weightController,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _calculateIMC,
            child: const Text(IMCUtils.imcButtonLabel),
          ),
          const SizedBox(height: 20),
          if (_imc != null) IMCResult(imc: _imc!),
        ],
      ),
    );
  }
}
