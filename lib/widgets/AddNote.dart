import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/cubit/add_note_cubit_cubit.dart';
import '../controllers/cubit/read_notes_cubit.dart';
import 'AddNoteForm.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteCubitState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
          if (state is AddNoteFailure) {
            print("Error : ${state.errMessage}");
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: (state is AddNoteLoading) ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  right: 16.0,
                  left: 16.0,
                  top: 16.0,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 10),
              child: const SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
