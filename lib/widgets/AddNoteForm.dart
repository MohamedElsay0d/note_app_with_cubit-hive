import 'package:flutter/material.dart';

import 'CustomButtonAdd.dart';
import 'CustomTextField.dart';

class AddNoteForm extends StatelessWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
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
    );
  }
}
