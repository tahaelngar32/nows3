import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/note_model.dart';
import 'color_list_view.dart';
class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentIndex;  // late انتظر المتغير حياخد قيمته اكيد

  @override
  @override
  void initState() {
    // TODO: implement initState
    currentIndex=kColor.indexOf(Color(widget.note.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kColor.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.color=kColor[index].value;
              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index,
              color: kColor[index],
            ),
          );
        },
      ),
    );;
  }
}
