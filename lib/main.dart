import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  var perguntaSelecionada = 0;

  void respondido() {
    perguntaSelecionada++;
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> PERGUNTAS = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(PERGUNTAS[perguntaSelecionada]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: respondido,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: respondido,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: respondido,
            ),
          ],
        ),
      ),
    );
  }
}
