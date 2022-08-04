 
import "package:flutter/material.dart";


class Question extends StatelessWidget {
  final String  questionDisPlay; 

  Question(this.questionDisPlay); 

  @override
  Widget build(BuildContext context) {

     return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
      questionDisPlay,
        style:TextStyle(
          color:Colors.pink, 
          fontSize:30),
          textAlign:TextAlign.center,
         )
      ,);  
    }
}