import 'package:flutter/material.dart';
import './main.dart';

class Answer extends StatelessWidget {
  final VoidCallback buttonRendor ; 
  final   buttonText ; 
   Answer(this.buttonRendor , this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
       width: double.infinity, 
       
      child: RaisedButton(
        color: Colors.red[400],
        textColor: Colors.white,
        child:Text(buttonText),
         onPressed: buttonRendor),
    );
  } 
}