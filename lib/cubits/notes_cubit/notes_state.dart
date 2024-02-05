part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccess({required this.notes});
}

final class NotesInitial extends NotesState {}

final class NotesFailur extends NotesState {
  final String errorMessage;

  NotesFailur({required this.errorMessage});
}
