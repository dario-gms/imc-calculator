import 'package:flutter/material.dart';

Widget buildTextFormField(
    TextEditingController controller, String labelText, String errorMessage) {
  return TextFormField(
    controller: controller,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(labelText: labelText),
    validator: (value) {
      if (value!.isEmpty) {
        return errorMessage;
      }
      return null;
    },
  );
}
