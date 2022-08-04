

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart'; 
import './Question.dart';
import './Answer.dart';
 
 void main() {
    runApp(MaterialApp(home:MyApp()));      
 }

 var  AnswerQuestion = [ 
   {
     'questionsText':'what is your fav color ?',
     'answers' : ['red' , 'blue' , 'greeen'],
   }, 

    { 
      'questionsText' :'what is your next plane ?' ,
       'answers' : ['being a good perosn' , 'doctor' , 'nothing'],
    
    },
    {
      'questionsText' : 'what is your fav punjabi singer ?',
      'answers' : ['Guru randawa' , 'ripudhman' , 'kaka'],
     },
     ];


 class MyApp extends StatefulWidget{

    @override
  State<StatefulWidget> createState() {
       return app();   
  }
 }

 class app extends State<MyApp> {
  
     
    var nextQuestion = 0; 
    
     void AnswerChose () { 
      setState(() {
      if(nextQuestion<AnswerQuestion.length-1) {
           nextQuestion++ ; 
        }
      });
     } 

  Widget build(BuildContext context) {   
       AnswerQuestion.forEach((value) => print(value)); 
      return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red[400],
              title:Center(
                child: Text("my Second flutter app"),
             ),
            ),
            body:Column(children:<Widget>[
             Question(
             AnswerQuestion[nextQuestion] ['questionsText'].toString()), 
          ...((AnswerQuestion[nextQuestion] ['answers'] ?? []) as List).map((Answ) {
              return Answer(AnswerChose,Answ); 
              },).toList(),
            ],)
      );
  }
 }

 