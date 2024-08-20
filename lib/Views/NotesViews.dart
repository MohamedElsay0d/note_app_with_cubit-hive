import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/cubit/read_notes_cubit.dart';
import '../widgets/AddNote.dart';
import '../widgets/NotesViewBody.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReadNotesCubit(),
      child: Scaffold(
        body: const NotesViewBody(),
        floatingActionButton: FloatingActionButton(
          shape: const StadiumBorder(),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const AddNote();
                });
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.add,
            size: 40,
          ),
        ),
      ),
    );
  }
}
