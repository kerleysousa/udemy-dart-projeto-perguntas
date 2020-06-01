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

  List<Widget> resposta = [];

  for (String alternativa in perguntas[perguntaSelecionada]['alternativas']){
    resposta.add(Resposta(alternativa, responder));
  }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: [
            Questao(perguntas[perguntaSelecionada]['pergunta']),
            ...resposta
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