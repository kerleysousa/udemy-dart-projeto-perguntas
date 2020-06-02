import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questoes.dart';
import 'package:projeto_perguntas/resposta.dart';

main(){
  runApp(new PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp>{

  var _perguntaSelecionada = 0;

  void _responder(){
    if(temPergunta){
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }
    
  final List<Map<String, Object>> _perguntas = [
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
    return _perguntaSelecionada < _perguntas.length;
  }

  Widget build(BuildContext context){

  List<String> lista = temPergunta
  ? _perguntas[_perguntaSelecionada]['alternativas']
  : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: temPergunta ?
        Column(
          children: [
            Questao(_perguntas[_perguntaSelecionada]['pergunta']),
            ...lista.map((alternativa) => Resposta(alternativa, _responder)).toList()
          ],
        ): null,
      )
    );
  }
}

class PerguntaApp extends StatefulWidget{
  PerguntaAppState createState(){
    return PerguntaAppState();
  }
}