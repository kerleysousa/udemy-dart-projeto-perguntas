import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';


main(){
  runApp(new PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp>{
  
  final List<Map<String, Object>> perguntas = [
    {
      'pergunta': 'Qual a sua cor favorita?',
      'alternativas': [
        {"texto": "Azul", "valor": 8},
        {"texto": "Amarelo", "valor": 6},
        {"texto": "Vermelho", "valor": 7},
        {"texto": "Branco","valor": 10}
        ]
    },
    {
      'pergunta': 'Qual seu animal favorito?',
      'alternativas': [
        {"texto": "Cachorro", "valor": 10},
        {"texto": "Gato", "valor": 1},
        {"texto": "Peixe", "valor": 3},
        {"texto": "Pássaro", "valor": 5}
        ]
    }  
  ];

  var perguntaSelecionada = 0;
  var pontuacaoTotal = 0;

  void responder(int pontuacao){
    if(temPergunta){
      setState(() {
        perguntaSelecionada++;
        pontuacaoTotal += pontuacao;
      });
    }
    print(pontuacaoTotal);
  }

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
        : Resultado(pontuacaoTotal),
      )
    );
  }
}

class PerguntaApp extends StatefulWidget{
  PerguntaAppState createState(){
    return PerguntaAppState();
  }
}