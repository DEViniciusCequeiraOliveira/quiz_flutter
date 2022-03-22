import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String alternativa;
  final void Function() quandoSelecionada;

  Resposta(this.alternativa, this.quandoSelecionada);

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    return Container(
      width: largura,
      child: RaisedButton(
        child: Text(alternativa),
        onPressed: quandoSelecionada,
      ),
    );
  }
}
