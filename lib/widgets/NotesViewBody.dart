import 'package:flutter/material.dart';

import 'CustomAppBar.dart';
import 'ViewCard.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const CutomerAppBar(),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return NoteCard();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
