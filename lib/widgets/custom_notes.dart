import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNotes extends StatelessWidget {
  const CustomNotes({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, EditNoteView.id),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16,
          ),
          color: const Color(0xFFFFcc80),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                note.title,
                style: const TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              subtitle: Text(
                note.subTitle,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                note.date,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    // another step
    // return Container(
    //   margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(
    //       16,
    //     ),
    //     color: Colors.cyan,
    //   ),
    //   child: Padding(
    //     padding: const EdgeInsets.all(16),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         const Text(
    //           "Flutter tips",
    //           style: TextStyle(
    //             fontSize: 28,
    //             color: Colors.black,
    //           ),
    //         ),
    //         Align(
    //           alignment: Alignment.bottomRight,
    //           child: IconButton(
    //             onPressed: () {},
    //             icon: const Icon(
    //               Icons.delete,
    //               color: Colors.black,
    //             ),
    //           ),
    //         ),
    //         const Text(
    //           "Build your Career with\n Aziz Aws",
    //           style: TextStyle(
    //             color: Colors.black,
    //           ),
    //         ),
    //         const Align(
    //           alignment: Alignment.centerRight,
    //           child: Text(
    //             "May 21,2022",
    //             style: TextStyle(
    //               color: Colors.black,
    //             ),
    //           ),
    //         ),

    //       ],
    //     ),
    //   ),
    // );
  }
}
