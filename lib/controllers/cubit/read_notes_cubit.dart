import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:hive_flutter/adapters.dart';

import '../../constants/Constant.dart';
import '../../models/NoteModel.dart';

part 'read_notes_state.dart';

class ReadNotesCubit extends Cubit<ReadNotesState> {
  ReadNotesCubit() : super(ReadNotesInitial());

  List<Notemodel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<Notemodel>(noteBox);
    notes = notesBox.values.toList();
    emit(ReadNotesSuccess());
  }
}
