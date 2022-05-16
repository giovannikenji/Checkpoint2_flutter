import 'package:flutter/material.dart';
import 'package:giovanni_sir/pages/list_page.dart';

class GiovanniButton extends StatelessWidget {

  final Function()? onPressed;

  GiovanniButton({this.onPressed});

  
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed, 
      backgroundColor: Colors.indigo,
      child: Text('+'),
    );
  }
}
