import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_Text_Field.dart';
import 'package:notes_app/widgets/custom_button.dart';

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
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
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
              title = value;
            },
          ),
          const SizedBox(
            height: 45,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
