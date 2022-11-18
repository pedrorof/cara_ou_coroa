import 'dart:math';

import 'package:flutter/material.dart';

class TelaDeJogar extends StatefulWidget {
  String valor;

  TelaDeJogar(this.valor) {}

  @override
  State<TelaDeJogar> createState() => _TelaDeJogarState();
}

class _TelaDeJogarState extends State<TelaDeJogar> {
  @override
  Widget build(BuildContext context) {
    // print(object);

    var caminhoImagem;

    if (widget.valor == "cara") {
      caminhoImagem = "images/moeda_cara.png";
    } else {
      caminhoImagem = "images/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset("images/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
