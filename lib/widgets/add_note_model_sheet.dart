import 'package:flutter/material.dart';
import 'package:news3/constants.dart';
import 'package:news3/widgets/custom_text_field.dart';

import 'add_note_form.dart';
import 'custom_button.dart';

class AddNoteModelSheet extends StatelessWidget {
  const AddNoteModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}



