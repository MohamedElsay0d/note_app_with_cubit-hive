import 'package:flutter/material.dart';

import 'AddNote.dart';
import 'CustomAppBar.dart';
import 'NotesListView.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            CutomerAppBar(),
            SizedBox(
              height: 10,
            ),
            NotesListView(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
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
    );
  }
}
