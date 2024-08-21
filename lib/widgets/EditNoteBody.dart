import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/cubit/read_notes_cubit.dart';
import '../models/NoteModel.dart';
import 'CustomAppBar.dart';
import 'CustomTextField.dart';

class Editnotebody extends StatefulWidget {
  const Editnotebody({super.key, required this.notemodel});

  final Notemodel notemodel;

  @override
  State<Editnotebody> createState() => _EditnotebodyState();
}

class _EditnotebodyState extends State<Editnotebody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            CutomerAppBar(
              title: "Edit Note",
              icon: Icons.check,
              onpressed: () {
                widget.notemodel.title = title ?? widget.notemodel.title;
                widget.notemodel.content = content ?? widget.notemodel.content;
                widget.notemodel.save();
                BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.notemodel.title,
              maxLines: 1,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: widget.notemodel.content,
              maxLines: 15,
              onChanged: (value) {
                content = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
