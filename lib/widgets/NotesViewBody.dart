import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/cubit/read_notes_cubit.dart';
import 'CustomAppBar.dart';
import 'NotesListView.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          CutomerAppBar(
            title: "Notes",
            icon: Icons.search,
          ),
          SizedBox(
            height: 10,
          ),
          NotesListView(),
        ],
      ),
    );
  }
}
