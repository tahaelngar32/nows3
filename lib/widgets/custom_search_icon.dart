import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icone, this.onPressed});
final IconData icone;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:46,
      width:46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.1),
        borderRadius: BorderRadius.circular(16),

      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icone,),
      ),
    );
  }
}