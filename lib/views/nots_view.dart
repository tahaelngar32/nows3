import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news3/cubits/notes_cubit/notes_cubit.dart';
import 'package:news3/widgets/nots_view_body.dart';

import '../widgets/add_note_model_sheet.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true, // عشان يتعمل اسكرول لما يفتح الكيبورد
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const AddNoteModelSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const NotsViewBody(),
    );
  }
}
