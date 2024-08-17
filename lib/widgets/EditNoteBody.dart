import 'package:flutter/material.dart';

import 'CustomAppBar.dart';
import 'CustomTextField.dart';

class Editnotebody extends StatelessWidget {
  const Editnotebody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            CutomerAppBar(
              title: "Edit Note",
              icon: Icons.check,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: "Title",
              maxLines: 1,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: "Content",
              maxLines: 15,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
