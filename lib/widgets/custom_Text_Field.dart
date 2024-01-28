import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.sizeOfPadding,
    this.hintText,
    this.labelText,
  });
  final sizeOfPadding;
  final hintText;
  final labelText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: sizeOfPadding + 0.0,
          horizontal: 16,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: hintText.toString(),
        hintStyle: const TextStyle(
          fontSize: 24,
          color: Colors.grey,
        ),
        labelText: labelText.toString(),
        labelStyle: const TextStyle(
          fontSize: 24,
          color: Colors.cyanAccent,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
