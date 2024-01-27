import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_notes.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notes",
          style: TextStyle(fontSize: 28),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8,
                ),
                color: Colors.grey[850],
              ),
              child: const Icon(
                size: 30,
                Icons.search,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: const [
          CustomNotes(),
          CustomNotes(),
          CustomNotes(),
          CustomNotes(),
          CustomNotes(),
          CustomNotes(),
        ],
      ),
    );
  }
}
