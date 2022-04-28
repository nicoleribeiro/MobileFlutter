import 'package:flutter/material.dart';
import 'pages/Formacao.dart';
import 'pages/Experiencia.dart';

class Pessoal extends StatefulWidget {
  const Pessoal({Key? key}) : super(key: key);

  @override
  _PessoalState createState() => _PessoalState();
}

class _PessoalState extends State<Pessoal> {
  int _currentPage = 0;

  final telas = [
    Center(
        child: Text(
      'My Name Is Nicole' +
          "\n" +
          "I'm 20" +
          "\n" +
          "I am a Systems Analyst" +
          "\n" +
          "Welcome to my Flutter App Profile ",
      style: TextStyle(
        fontSize: 30,
      ),
      textAlign: TextAlign.center,
    )),
    Formacao(),
    Experiencia(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: telas[_currentPage],
        drawer: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Nicole Ribeiro Nunes '),
              accountEmail: Text('nicole.ribeiro1612@gmail.com'),
              currentAccountPicture: CircleAvatar(
                //backgroundImage: AssetImage('assets/images/rock2.jpg'),
                backgroundImage: NetworkImage(
                    'blob:https://web.whatsapp.com/d4d8a4b7-f266-4252-922f-c2dfc7d73b66'),
              ),
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Pessoal'),
              onTap: () {
                setState(() {
                  _currentPage = 0;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Formação'),
              onTap: () {
                setState(() {
                  _currentPage = 1;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Experiência'),
              onTap: () {
                setState(() {
                  _currentPage = 2;
                });
              },
            ),
          ],
        )),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Meu Perfil"),
      centerTitle: true,
      backgroundColor: Colors.pink,
    );
  }
}
