import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_form_state.dart';

class AddNoteModalBottomSheet extends StatelessWidget {
  const AddNoteModalBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 26),
      child: SingleChildScrollView(
        child: AddNoteFormState(),
      ),
    );
  }
}
