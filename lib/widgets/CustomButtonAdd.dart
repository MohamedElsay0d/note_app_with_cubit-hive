import 'package:flutter/material.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 3, 253, 199),
          borderRadius: BorderRadius.circular(8)),
      child: const Center(
        child: Text(
          "Add Note",
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
