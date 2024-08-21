import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/cubit/add_note_cubit_cubit.dart';
import 'ColorItem.dart';

class ColorListview extends StatefulWidget {
  const ColorListview({super.key});

  @override
  State<ColorListview> createState() => _ColorListviewState();
}

class _ColorListviewState extends State<ColorListview> {
  int currentIndex = 0;
  final List<Color> allColors = const [
    Color(0xFF7681B3),
    Color(0xFF6F73D2),
    Color(0xFF83C9F4),
    Color(0xFFA3D5FF),
    Color(0xFFD9F0FF),
    Color(0xFFFFC09F),
    Color(0xFFADF7B6),
    Color(0xFFA0CED9),
    Color(0xFFFCF5C7),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: allColors.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = allColors[index];
              setState(() {});
            },
            child: ColorItem(
              isSelected: currentIndex == index,
              color: allColors[index],
            ),
          ),
        ),
      ),
    );
  }
}
