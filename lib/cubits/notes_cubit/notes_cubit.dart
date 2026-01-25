import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:news3/models/note_model.dart';

import '../../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel> notes=[];
  fetchAllNotes() {
    notes = [];
    var notesBox = Hive.box<NoteModel>(kNotsBox);
    notes = notesBox.values.toList();

    emit(NoteSuccess());
  }
}
