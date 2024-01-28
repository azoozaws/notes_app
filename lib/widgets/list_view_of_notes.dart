import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_notes.dart';

class ListViewofNotes extends StatelessWidget {
  const ListViewofNotes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CustomNotes();
      },
    );
  }
}
