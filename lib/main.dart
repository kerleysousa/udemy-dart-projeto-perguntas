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
        {"texto": "Gato", "valor": 0},
        {"texto": "Peixe", "valor": 3},
        {"texto": "Pássaro", "valor": 5}
        ]
    },  
    {
      'pergunta': 'Qual seu genero musical favorito?',
      'alternativas': [
        {"texto": "Rock", "valor": 10},
        {"texto": "Clássico", "valor": 8},
        {"texto": "Sertanejo", "valor": 6},
        {"texto": "Funk", "valor": 0}
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
  }

  void reiniciarQuestionario() {
    setState(() {
      perguntaSelecionada = 0;
      pontuacaoTotal = 0;
    });
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              temPergunta 
              ? Questionario(
                perguntas: perguntas, 
                perguntaSelecionada: perguntaSelecionada, 
                responder: responder
              )
              : Resultado(pontuacaoTotal, reiniciarQuestionario),
            ],
          ),
        )
      )
    );
  }
}

class PerguntaApp extends StatefulWidget{
  PerguntaAppState createState(){
    return PerguntaAppState();
  }
}