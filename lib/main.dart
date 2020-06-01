import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questoes.dart';
import 'package:projeto_perguntas/resposta.dart';

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
            Questao(perguntas[perguntaSelecionada]),
            Resposta("Resposta 1"),  
            Resposta("Resposta 2"),  
            Resposta("Resposta 3"),  
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