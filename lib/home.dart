import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _valor = "Clique no Logo para ver um Valor RT";
  var _valores = [
    'ATITUDE: ATENTAR-SE AS MUDANÇAS E AGIR PERANTE OS DESAFIOS',
    'INCLUSÃO: RESPEITAS AS DIFERENÇAS E ENTENDER SUAS POTENCIALIDADES',
    'COOPETIÇÃO: JUNTOS APRENDEMOS MAIS E VAMOS MAIS LONGE',
    'INOVAÇÃO: CRIATIVIDADE E PERSISTENCIA PARA RESOLVER PROBLEMAS',
    'DIVERSÃO: ADMIRAR E COMEMORAR O QUE FAZEMOS'
  ];

  // metodo para selecionar os valores de forma aleátoria.
  void gerarValores(){
    var randomNumber = new Random().nextInt(this._valores.length);
    setState(() {
      this._valor = this._valores[randomNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Valores Robot Time'),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => gerarValores(),
                child: Image.asset('images/rt_logo.png', height: 250,)
              ),
              Text(_valor,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
