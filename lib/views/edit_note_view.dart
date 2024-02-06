import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_Text_Field.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});
  static String id = "EditNoteView";
  final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, subtitle;
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
                onPressed: () {
                  widget.note.title = title ?? widget.note.title;
                  widget.note.subTitle = subtitle ?? widget.note.subTitle;
                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  Navigator.pop(context);
                }),
            const SizedBox(
              height: 25,
            ),
            CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hintText: "Enter the title",
              labelText: "Title",
            ),
            const SizedBox(
              height: 25,
            ),
            CustomTextField(
              onChanged: (value) {
                subtitle = value;
              },
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
