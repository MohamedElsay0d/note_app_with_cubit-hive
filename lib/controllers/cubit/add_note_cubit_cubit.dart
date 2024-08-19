import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app_with_cubit/constants/Constant.dart';
import 'package:note_app_with_cubit/models/NoteModel.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteCubitInitial());

  void addNote(Notemodel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<Notemodel>(noteBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(errMessage: e.toString()));
    }
  }
}
