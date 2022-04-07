import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
  int numero = new Random().nextInt(11);

  _titulo(){
    return AppBar(
      title: Text("Jogo do Nº aleatório"),
      centerTitle: true,
      backgroundColor: Colors.black,
    );
  }

  // imagem
  _foto(){
    return Center(
      child: Image.network('https://cdn-icons-png.flaticon.com/512/17/17624.png',
      height: 150,
      width: 150,
      ),
    );
  }
}
