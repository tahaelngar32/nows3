import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icone});
  final String title;
  final IconData icone;
  @override

  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28, color: Colors.white),
        ),
        Spacer(),
        CustomSearchIcon(icone: icone,),
      ],
    );
  }
}
