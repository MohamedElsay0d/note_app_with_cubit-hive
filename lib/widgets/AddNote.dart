import 'package:flutter/material.dart';

import 'CustomTextField.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
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
        ],
      ),
    );
  }
}
