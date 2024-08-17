import 'package:flutter/material.dart';

import 'CustomAppBar.dart';

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
              height: 15,
            ),
            CutomerAppBar(
              title: "Edit Note",
              icon: Icons.check,
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
