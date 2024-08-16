import 'package:flutter/material.dart';

import '../widgets/NotesViewBody.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesViewBody(),
    );
  }
}
