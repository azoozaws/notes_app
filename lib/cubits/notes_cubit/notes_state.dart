part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccess({required this.notes});
}

final class NotesInitial extends NotesState {}
