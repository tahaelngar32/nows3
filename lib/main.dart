import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:news3/constants.dart';
import 'package:news3/views/nots_view.dart';

void main()async {
  await Hive.initFlutter();
  await Hive.openBox(kNotsBox);
  runApp(const NewsApp3());
}

class NewsApp3 extends StatelessWidget {
  const NewsApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness:Brightness.dark,fontFamily: "Poppins") ,
      home: const NotsView(),
    );
  }
}

