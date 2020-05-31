import 'package:flutter/material.dart';

main(){
  runApp(new PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp>{

  var perguntaSelecionada = 0;

  void responder(){
    setState(() {
      perguntaSelecionada++;
    });
      print("Resposta $perguntaSelecionada");
  }

  Widget build(BuildContext context){
    
  final List<String> perguntas = [
    'Qual a sua cor favorita?',
    'Qual seu animal favorito?'
  ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
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

class PerguntaApp extends StatefulWidget{
  PerguntaAppState createState(){
    return PerguntaAppState();
  }
}