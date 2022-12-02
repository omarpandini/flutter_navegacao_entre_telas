import 'package:flutter/material.dart';
import 'package:navegacao_telas/pessoa.dart';

class TelaSecundaria extends StatefulWidget {
  Pessoa pessoa;
  TelaSecundaria(this.pessoa);

  @override
  State<TelaSecundaria> createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 66, 153, 252),
        appBar: AppBar(
          title: Text('Segunda Tela'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            child: Text('OLá ' +
                widget.pessoa.nome +
                '. Idade: ' +
                widget.pessoa.idade.toString()),
          ),
        ));
  }
}
