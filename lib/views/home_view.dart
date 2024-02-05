import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/widgets/add_note_modal_bottom_sheet.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              34,
            ),
          ),
          child: const Icon(
            Icons.add,
          ),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.grey[850],
              context: context,
              builder: (context) {
                return const AddNoteModalBottomSheet();
              },
            );
          },
        ),
        body: const NotesView(),
      ),
    );
  }
}
