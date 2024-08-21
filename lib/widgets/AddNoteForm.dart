import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../controllers/cubit/add_note_cubit_cubit.dart';
import '../models/NoteModel.dart';
import 'ColorListview.dart';
import 'CustomButtonAdd.dart';
import 'CustomTextField.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  final Random _random = Random();
  int _getRandomColorInt() {
    int generateColorInt() {
      return (255 << 24) |
          (_random.nextInt(256) << 16) |
          (_random.nextInt(256) << 8) |
          _random.nextInt(256);
    }

    int colorInt;
    do {
      colorInt = generateColorInt();
    } while (_isColorBright(Color(colorInt)));

    return colorInt;
  }

  bool _isColorBright(Color color) {
    final double brightness =
        (0.299 * color.red + 0.587 * color.green + 0.114 * color.blue);
    return brightness > 186;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            hint: "Title",
            maxLines: 1,
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: "Content",
            maxLines: 5,
            onSaved: (value) {
              subtitle = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const ColorListview(),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<AddNoteCubit, AddNoteCubitState>(
            builder: (context, state) {
              return CustomAddButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    Notemodel note = Notemodel(
                        title: title!,
                        content: subtitle!,
                        date: DateFormat.yMd().format(DateTime.now()),
                        color:
                            BlocProvider.of<AddNoteCubit>(context).color.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                isLoading: (state is AddNoteLoading) ? true : false,
              );
            },
          )
        ],
      ),
    );
  }
}
