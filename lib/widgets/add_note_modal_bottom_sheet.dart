import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_Text_Field.dart';

class AddNoteModalBottomSheet extends StatelessWidget {
  const AddNoteModalBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 34),
      child: const Column(
        children: [
          CustomTextField(
            hintText: "Enter the title",
            labelText: "Title",
            sizeOfPadding: 24,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hintText: "Enter the content",
            labelText: "Content",
            sizeOfPadding: 90,
          ),
        ],
      ),
    );
  }
}
