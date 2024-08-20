import 'dart:math';

import 'package:flutter/material.dart';
import 'package:note_app_with_cubit/models/NoteModel.dart';

import '../Views/EditNote.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.notemodel});

  final Notemodel notemodel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const EditNote();
        }));
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(notemodel.color),
        ),
        child: Column(
          children: [
            ListTile(
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    notemodel.title,
                    style: TextStyle(
                        color: Colors.white.withOpacity(1),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    notemodel.content,
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
                    notemodel.date,
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
      ),
    );
  }
}
