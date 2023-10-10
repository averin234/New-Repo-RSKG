import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? initialValue;
  const MyTextField({
    super.key,
    required this.controller,
    required this.labelText,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        initialValue: initialValue,
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
