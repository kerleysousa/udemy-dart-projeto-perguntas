import 'package:flutter/material.dart';

main(){
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget{

 
  final List<String> perguntas = [
    'Qual a sua cor favorita?',
    'Qual seu animal favorito?'
  ];

  void responder(){
    print("Resposta");
  }

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            RaisedButton(
              child: Text("Resposta"),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text("Resposta"),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text("Resposta"),
              onPressed: responder,
            )
          ],
        ),
      )
    );
  }
}