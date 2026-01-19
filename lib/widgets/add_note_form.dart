import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news3/cubits/add_node_cubit/add_note_cubit.dart';
import 'package:news3/models/note_model.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalditeMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalditeMode,
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
              hint: 'Content',
              maxLines: 5,
              onSaved: (value) {
                subTitle = value;
              }),
          SizedBox(
            height: 16,
          ),
          CustomButton(onTap: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
              var noteModel = NoteModel(
                  title: title!, subTitle: subTitle!, date: DateTime.now().toString(), color: Colors.blue.value);
              BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
            } else {
              autovalditeMode = AutovalidateMode.always;
              setState(() {

              });
            }
          },),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
