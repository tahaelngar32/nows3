import 'package:flutter/material.dart';
import 'package:news3/cubits/notes_cubit/notes_cubit.dart';

import 'package:news3/models/note_model.dart';
import 'package:news3/widgets/custom_app_bar.dart';
import 'package:news3/widgets/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'edit_note_color_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: "Edit",
            icone: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              context.read<NotesCubit>().fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            hint: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: widget.note.subTitle,
            maxLines: 8,
            onChanged: (value) {
              content = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          EditNoteColorList(note: widget.note,),
        ],
      ),
    );
  }
}
