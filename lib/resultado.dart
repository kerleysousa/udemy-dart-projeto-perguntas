import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;

  Resultado(this.pontuacao);

  get fraseResultado{
    if(pontuacao<7){
      return 'Parabéns!';
    } else if(pontuacao<12){
      return 'Muito bom!';
    } else if(pontuacao<16){
      return 'Impressionante!';
    } else {
      return 'Demais!!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        fraseResultado, 
        style: TextStyle(fontSize: 28),
        ),
    );
  }
}