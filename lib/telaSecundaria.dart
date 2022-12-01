import 'package:flutter/material.dart';

class TelaSecundaria extends StatelessWidget {
  const TelaSecundaria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 88, 204, 92),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 15, 133, 76),
        title: Text('Tela Secundária'),
      ),
      body: Column(
        children: [Text('Segunda tela')],
      ),
    );
  }
}
