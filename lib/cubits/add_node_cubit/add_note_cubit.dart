import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:news3/constants.dart';
import 'package:news3/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
 Color color = Color(0xff114B5F);
  addNote(NoteModel note)async
  {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotsBox);

         await notesBox.add(note);
      emit(AddNoteSuccess());
    }  catch (e) {
      // TODO

      emit(AddNoteFailure(e.toString()));
    }
  }

}
