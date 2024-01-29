import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/list_view_of_notes.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            title: "Notes",
            icon: Icons.search,
          ),
          Expanded(
            child: ListViewofNotes(),
          ),
        ],
      ),
    );
  }
}
