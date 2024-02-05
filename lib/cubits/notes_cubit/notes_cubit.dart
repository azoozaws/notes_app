import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes(NoteModel note) {
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);

      emit(NotesSuccess(notes: notesBox.values.toList()));
    } catch (e) {
      emit(NotesFailur(errorMessage: e.toString()));
    }
  }
}
