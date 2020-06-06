import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questoes.dart';
import 'package:projeto_perguntas/resposta.dart';
import 'package:projeto_perguntas/resultado.dart';
import 'package:projeto_perguntas/questionario.dart';

main(){
  runApp(new PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp>{

  var perguntaSelecionada = 0;

  void responder(){
    if(temPergunta){
      setState(() {
        perguntaSelecionada++;
      });
    }
  }
    
  final List<Map<String, Object>> perguntas = [
    {
      'pergunta': 'Qual a sua cor favorita?',
      'alternativas': ["Azul","Amarelo","Vermelho","Branco"]
    },
    {
      'pergunta': 'Qual seu animal favorito?',
      'alternativas': ["Cachorro","Gato","Peixe","Pássaro"]
    }  
  ];

  bool get temPergunta{
    return perguntaSelecionada < perguntas.length;
  }

  Widget build(BuildContext context){

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: temPergunta 
        ? Questionario(
          perguntas: perguntas, 
          perguntaSelecionada: perguntaSelecionada, 
          responder: responder
        )
        : Resultado(),
      )
    );
  }
}

class PerguntaApp extends StatefulWidget{
  PerguntaAppState createState(){
    return PerguntaAppState();
  }
}