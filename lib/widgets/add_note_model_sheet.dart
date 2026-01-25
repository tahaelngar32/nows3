import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news3/constants.dart';
import 'package:news3/cubits/add_node_cubit/add_note_cubit.dart';
import 'package:news3/widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'add_note_form.dart';
import 'custom_button.dart';

class AddNoteModelSheet extends StatelessWidget {
  const AddNoteModelSheet({super.key});

// bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteFailure) {
          print("failied${state.errMessage}");
        }
        if (state is AddNoteSuccess) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNoteLoading ? true : false,
          // دي فايدتها انها توقف عمل الانبيوت وقت الحفظ
          child:  Padding(
            padding: EdgeInsets.only(
                right: 16,
                left: 8,
                bottom: MediaQuery.of(context).viewInsets.bottom // فايدتها تعمل بادينغ بارتفاع  عند ظهور الكيبورد
            ),
            child: const SingleChildScrollView(child: AddNoteForm()),
          ),
        );
      },
    );
  }
}
