import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_Text_Field.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_list_view_of_circle_avatar.dart';

class AddNoteFormState extends StatefulWidget {
  const AddNoteFormState({
    super.key,
  });

  @override
  State<AddNoteFormState> createState() => _AddNoteFormStateState();
}

class _AddNoteFormStateState extends State<AddNoteFormState> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 26,
          ),
          CustomTextField(
            hintText: "Enter the title",
            labelText: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            hintText: "Enter the content",
            labelText: "Content",
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 28 * 2 + 2,
            child: CustomListViewOfCircleAvatar(),
          ),
          const SizedBox(
            height: 25,
          ),
          BlocBuilder<AddNoteCubit, AddNoteCubitState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    addNote(title: title!, subTitle: subTitle!);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 26,
          ),
        ],
      ),
    );
  }

  void addNote({required String title, required String subTitle}) {
    NoteModel note = NoteModel(
      title: title,
      subTitle: subTitle,
      date: DateTime.now().toString(),
      color: acolor.value,
    );
    BlocProvider.of<AddNoteCubit>(context).addNote(note);
  }
}
