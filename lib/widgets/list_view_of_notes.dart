import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_notes.dart';

class ListViewofNotes extends StatelessWidget {
  const ListViewofNotes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CustomNotes();
        },
      ),
    );
  }
}
