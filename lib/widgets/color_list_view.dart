import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ?  CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 36,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
List<Color> color=const[
  Color(0xff114B5F),
  Color(0xffB5446E),
  Color(0xff6E633D),
  Color(0xff8878C2),
  Color(0xffEA1111),
  Color(0xff190303),
  Color(0xff4E6E3C),
  Color(0xff45B59F),
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: color.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              currentIndex =index;
              setState(() {

              });
            },
            child: ColorItem(
              isActive: currentIndex == index,
              color: color[index],
            ),
          );
        },
      ),
    );
  }
}
