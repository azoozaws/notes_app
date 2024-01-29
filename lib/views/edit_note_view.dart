import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_Text_Field.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = "EditNoteView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            CustomAppBar(
              title: "Edit Note",
              icon: Icons.check,
              onPressed: () => Navigator.pop(context),
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomTextField(
              hintText: "Enter the title",
              labelText: "Title",
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomTextField(
              hintText: "Enter the content",
              labelText: "Content",
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
