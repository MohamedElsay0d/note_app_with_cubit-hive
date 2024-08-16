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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: _getRandomColor(),
      ),
      child: Column(
        children: [
          ListTile(
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Title",
                  style: TextStyle(
                      color: Colors.white.withOpacity(1),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Sub Title",
                  style: TextStyle(
                      color: Colors.white.withOpacity(.85),
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  size: 50,
                  color: Colors.red,
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(right: 10.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "May 21/7/2013",
                  style: TextStyle(
                      color: Colors.black.withOpacity(1),
                      fontSize: 17,
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
