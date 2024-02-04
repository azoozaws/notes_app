import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteCubitInitial());
  bool isLoading = false;
  addNote(NoteModel note) {
    emit(AddNoteLoading());
    isLoading = true;
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);
      notesBox.add(note);
      emit(AddNoteSuccess());
      isLoading = false;
    } catch (e) {
      emit(AddNoteFailur(errorMessage: e.toString()));
      isLoading = false;
    }
  }
}
