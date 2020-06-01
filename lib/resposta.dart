import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  final String texto;
  final void Function() funcaoResposta;

  Resposta(this.texto, this.funcaoResposta);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      textColor: Colors.white,
      child: Text(texto),
      onPressed: funcaoResposta,
    );
  }
}