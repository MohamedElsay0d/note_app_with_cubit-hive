import 'dart:math';

import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  NoteCard({super.key});

  final Random _random = Random();

  Color _getRandomColor() {
    Color generateColor() {
      return Color.fromARGB(
        255,
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    }

    Color color;
    do {
      color = generateColor();
    } while (_isColorBright(color));

    return color;
  }

  bool _isColorBright(Color color) {
    final double brightness =
        (0.299 * color.red + 0.587 * color.green + 0.114 * color.blue);
    return brightness > 186;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: _getRandomColor(),
      ),
      child: const Column(
        children: [
          ListTile(
            title: Text(
              "Title",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Sub Title",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Icons.delete,
              size: 50,
              color: Colors.red,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "May 21/7/2013",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
