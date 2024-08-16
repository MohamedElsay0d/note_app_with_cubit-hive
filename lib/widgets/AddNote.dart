import 'package:flutter/material.dart';

import 'CustomButtonAdd.dart';
import 'CustomTextField.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hint: "Title",
              maxLines: 1,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: "Content",
              maxLines: 5,
            ),
            SizedBox(
              height: 20,
            ),
            CustomAddButton()
          ],
        ),
      ),
    );
  }
}
