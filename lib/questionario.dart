import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questoes.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

  Questionario({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.responder
  });

  
  bool get temPergunta{
    return perguntaSelecionada < perguntas.length;
  }
  
  @override
  Widget build(BuildContext context) {

  List<String> lista = temPergunta
  ? perguntas[perguntaSelecionada]['alternativas']
  : null;

    return Column(
          children: [
            Questao(perguntas[perguntaSelecionada]['pergunta']),
            ...lista.map((alternativa) => Resposta(alternativa, responder)).toList()
          ],
        );
  }
}