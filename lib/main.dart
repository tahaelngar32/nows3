import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:news3/constants.dart';
import 'package:news3/cubits/add_node_cubit/add_note_cubit.dart';
import 'package:news3/cubits/notes_cubit/notes_cubit.dart';
import 'package:news3/models/note_model.dart';
import 'package:news3/simple_bloc_observer.dart';
import 'package:news3/views/nots_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox<NoteModel>(kNotsBox);
  runApp(const NewsApp3());
}

class NewsApp3 extends StatelessWidget {
  const NewsApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NotesCubit()..fetchAllNotes(),
        ),
        BlocProvider(
          create: (context) => AddNoteCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
        home: const NotsView(),
      ),
    );
  }
}
