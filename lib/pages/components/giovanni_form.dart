import 'package:flutter/material.dart';

class GiovanniForm extends StatelessWidget{

  final String placeholder;
  final TextEditingController textedInput;
  InputBorder? inputBorder;

  GiovanniForm({required String this.placeholder, required this.textedInput});


  @override 
  Widget build(BuildContext context){
    return TextFormField(
      controller: textedInput,
      decoration: InputDecoration(
        label: Text(placeholder),
        labelStyle: TextStyle(color: Colors.indigo)
    ));
  }
}