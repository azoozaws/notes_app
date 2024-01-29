import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_Text_Field.dart';
import 'package:notes_app/widgets/custom_button.dart';

class AddNoteModalBottomSheet extends StatelessWidget {
  const AddNoteModalBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 26),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hintText: "Enter the title",
              labelText: "Title",
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextField(
              hintText: "Enter the content",
              labelText: "Content",
              maxLines: 5,
            ),
            SizedBox(
              height: 60,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
