import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/cubit/read_notes_cubit.dart';
import '../models/NoteModel.dart';
import 'NoteCard.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotesCubit, ReadNotesState>(
      builder: (context, state) {
        List<Notemodel> notesList =
            BlocProvider.of<ReadNotesCubit>(context).notes!;
        return Expanded(
          child: ListView.separated(
            itemCount: notesList.length,
            itemBuilder: (context, index) {
              return NoteCard(
                notemodel: notesList[index],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 10,
              );
            },
          ),
        );
      },
    );
  }
}
