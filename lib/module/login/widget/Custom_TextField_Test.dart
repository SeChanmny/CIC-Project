import 'package:flutter/material.dart';

class TestTextField extends StatelessWidget {
  final bool? filled;
  final Color? color;
  final String? labelText;
  final String? initialValue;
  final ValueChanged<String>? onChanged;
  const TestTextField({
    super.key,
    this.filled,
    this.color,
    this.labelText,
    this.initialValue,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      onChanged: onChanged,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        fillColor: initialValue == '' ? Colors.red : Colors.yellow,
        filled: filled,
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
