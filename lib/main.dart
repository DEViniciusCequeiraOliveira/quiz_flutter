import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(quizApp());


class quizApp extends StatefulWidget {
  @override
  State<quizApp> createState() => _quizAppState();
}

class _quizAppState extends State<quizApp> {
  var perguntaSelecionada = 0;

  void responder() => setState(() {
        perguntaSelecionada++;
      });

  final perguntas = ["Qual a sua cor favorita?", "Qual o seu animal favorito?"];
  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Center(
          child: Column(
            children: [
              Questao(perguntas[perguntaSelecionada]),
              Resposta("Resposta1", responder),
              Resposta("Resposta1", responder),
              Resposta("Resposta1", responder),
            ],
          ),
        ),
      ),
    );
  }
}
