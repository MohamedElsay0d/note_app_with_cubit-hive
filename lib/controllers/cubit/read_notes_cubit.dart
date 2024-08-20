import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:hive_flutter/adapters.dart';

import '../../constants/Constant.dart';
import '../../models/NoteModel.dart';

part 'read_notes_state.dart';

class ReadNotesCubit extends Cubit<ReadNotesState> {
  ReadNotesCubit() : super(ReadNotesInitial());

  fetchAllNotes() {
    try {
      var notesBox = Hive.box<Notemodel>(noteBox);
      List<Notemodel> notes = notesBox.values.toList();
      emit(ReadNotesSuccess(notes: notes));
    } catch (e) {
      emit(ReadNotesFailure(errMessage: e.toString()));
    }
  }
}
