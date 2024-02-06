part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesSuccess extends NotesState {}

final class NotesInitial extends NotesState {}
