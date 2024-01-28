import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/widgets/custom_Text_Field.dart';

class AddNoteModalBottomSheet extends StatelessWidget {
  const AddNoteModalBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 34),
      child: Column(
        children: [
          const CustomTextField(
            hintText: "Enter the title",
            labelText: "Title",
            sizeOfPadding: 24,
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomTextField(
            hintText: "Enter the content",
            labelText: "Content",
            sizeOfPadding: 50,
          ),
          const SizedBox(
            height: 80,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
                borderRadius: BorderRadius.circular(8),
              ),
              height: 60,
              child: const Center(
                child: Text(
                  "Add",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
