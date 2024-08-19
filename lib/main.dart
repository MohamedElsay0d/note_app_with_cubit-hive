import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'Views/NotesViews.dart';
import 'constants/Constant.dart';
import 'controllers/cubit/add_note_cubit_cubit.dart';
import 'models/NoteModel.dart';
import 'models/NoteModel.g.dart';
import 'models/Simple_BLoc_Observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  await Hive.openBox<Notemodel>(noteBox);
  Hive.registerAdapter(NotemodelAdapter());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const Notesview(),
      ),
    );
  }
}
