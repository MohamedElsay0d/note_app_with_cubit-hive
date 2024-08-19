import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../controllers/cubit/add_note_cubit_cubit.dart';
import 'AddNoteForm.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: BlocConsumer<AddNoteCubit, AddNoteCubitState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
          if (state is AddNoteFailure) {
            print("Error : ${state.errMessage}");
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: (state is AddNoteLoading) ? true : false,
            child: const SingleChildScrollView(child: AddNoteForm()),
          );
        },
      ),
    );
  }
}
