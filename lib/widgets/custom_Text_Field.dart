import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.maxLines = 1,
      required this.hintText,
      required this.labelText,
      this.onSaved});
  final int maxLines;
  final String hintText;
  final String labelText;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: outlineInputBorderMethod(),
        focusedBorder: outlineInputBorderMethod(),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 24,
          color: Colors.grey,
        ),
        labelText: labelText,
        labelStyle: const TextStyle(
          fontSize: 24,
          color: kPrimarycolor,
        ),
        enabledBorder: outlineInputBorderMethod(),
      ),
    );
  }

  OutlineInputBorder outlineInputBorderMethod() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
