import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalditeMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalditeMode,
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
              hint: 'Content',
              maxLines: 5,
              onSaved: (value) {
                subTitle = value;
              }),
          SizedBox(
            height: 16,
          ),
          CustomButton(onTap: (){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            }else{
              autovalditeMode=AutovalidateMode.always;
              setState(() {

              });
            }
          },),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
