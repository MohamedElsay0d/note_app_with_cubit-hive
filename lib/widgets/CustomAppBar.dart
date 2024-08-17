import 'package:flutter/material.dart';
import 'package:note_app_with_cubit/widgets/CustomSearchIcon.dart';

class CutomerAppBar extends StatelessWidget {
  const CutomerAppBar({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        CustomSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
