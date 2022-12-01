import 'package:flutter/material.dart';
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
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TelaSecundaria(),
                      ));
                },
                child: Text('Ir para a segunda tela'))
          ],
        ),
      ),
    );
  }
}
