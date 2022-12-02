import 'package:flutter/material.dart';
import 'package:navegacao_telas/pessoa.dart';
import 'package:navegacao_telas/telaSecundaria.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 66, 190, 239),
        appBar: AppBar(
          title: Text('Tela Principal'),
        ),
        body: Body());
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _idadeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: 'Informe o nome'),
              controller: _nomeController,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Informe a idade'),
              controller: _idadeController,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Pessoa pessoa = Pessoa(_nomeController.text,
                          int.parse(_idadeController.text));

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TelaSecundaria(pessoa),
                          ));
                    });
                  },
                  child: Text('Ir para a segunda tela')),
            )
          ],
        ),
      ),
    );
  }
}
