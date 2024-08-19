import 'package:flutter/material.dart';

import 'AddNoteForm.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
