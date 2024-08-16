import 'package:flutter/material.dart';

import 'CustomAppBar.dart';
import 'NotesListView.dart';
import 'ViewCard.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
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
    );
  }
}
