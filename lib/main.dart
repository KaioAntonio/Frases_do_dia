import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,

  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Enfrente os problemas e leve a melhor!",
    "Os presentes de cada dia",
    "Dê mais atenção ao que você tem de bom na sua vida",
    "Nem todos os dias são bons, mas há algo bom em cada dia.",
    "Não se exija demais",
    "Um passo por dia",
  ];

  var _fraseGeradaa = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){

    var numeroSorteado = Random().nextInt(_frases.length);


    setState(() {
      _fraseGeradaa = _frases[ numeroSorteado ];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          /*width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(width: 3,color: Colors.amber)
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/logo.png'),
              Text(
                _fraseGeradaa,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text(
                    "Nova Frase",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                ),
                color: Colors.green,
                onPressed: _gerarFrase,

                ),

            ],
          ),
        ),
      )
    );
  }
}


