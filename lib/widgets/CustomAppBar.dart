import 'package:flutter/material.dart';
import 'package:note_app_with_cubit/widgets/CustomSearchIcon.dart';

class CutomerAppBar extends StatelessWidget {
  const CutomerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        CustomSearchIcon(),
      ],
    );
  }
}
