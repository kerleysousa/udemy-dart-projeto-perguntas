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

  List<String> lista = perguntas[perguntaSelecionada]['alternativas'];

  List<Widget> alternativas = lista
    .map((alternativa) => Resposta(alternativa, responder))
    .toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: [
            Questao(perguntas[perguntaSelecionada]['pergunta']),
            ...alternativas
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