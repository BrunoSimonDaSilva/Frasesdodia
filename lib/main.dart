import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Frases(),
  ));
}

class Frases extends StatefulWidget {
  const Frases({Key? key}) : super(key: key);

  @override
  State<Frases> createState() => _FrasesState();
}

class _FrasesState extends State<Frases> {
  final _texto = [
    "A vida e uma caixa preta nunca saberemos o seu real significado.",
    "não deveríamos temer a morte, mais sim a vida",
    "Faça a pessoa que você gosta se sentir especial ao invés de só mais uma",
    "Teu abraço eras confortante",
    "Uma nova frase será gerada:"
    //Frases tiradas de https://www.pensador.com/pensamento_aleatorio/
  ];
  var _aleat = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases Do Dia"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.all(30),
                  child:
                      const Image(image: AssetImage("assets/imgs/logo.png"))),
              Container(
                width: 250,
                height: 300,
                margin: const EdgeInsets.only(top: 15),
                padding: const EdgeInsets.all(5),
                child: Text(
                  _texto[_aleat],
                ),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.lightGreen
                ),
                  onPressed: () {
                    setState(() {
                      _aleat = Random().nextInt(4);
                    });
                  },
                  child: const Text(
                    "Click Aqui!!",
                    style: TextStyle(
                      color: Colors.black
                    ),
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
