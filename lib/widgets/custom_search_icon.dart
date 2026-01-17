import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icone});
final IconData icone;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:46,
      width:46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.1),
        borderRadius: BorderRadius.circular(16),

      ),
      child: Center(
        child: Icon(icone,),
      ),
    );
  }
}