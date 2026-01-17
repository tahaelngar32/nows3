import 'package:flutter/material.dart';
import 'package:news3/widgets/custom_app_bar.dart';

import 'nots_list_view.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotsViewBody extends StatelessWidget {
  const NotsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(title: "Note",icone: Icons.search,),

          Expanded(
            child: NotsListView(),
          ),
        ],
      ),
    );
  }
}
