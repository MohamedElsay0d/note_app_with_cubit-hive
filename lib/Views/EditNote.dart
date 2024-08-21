import 'package:flutter/material.dart';

import '../models/NoteModel.dart';
import '../widgets/EditNoteBody.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key, required this.notemodel});

  final Notemodel notemodel;
  @override
  Widget build(BuildContext context) {
    return Editnotebody(
      notemodel: notemodel,
    );
  }
}
