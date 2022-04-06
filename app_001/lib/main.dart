import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: metodoHome(),
    );
  }
    metodoHome(){
      return Scaffold(
        appBar: AppBar(
          title: Text("Meu Perfil"),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Text(
              "Meu nome é Nicole Ribeiro tenho 20 anos e essa é a minha primeira faculdade no t.i.",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
               fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationColor: Colors.pink,
              decorationStyle: TextDecorationStyle.dashed,
  
            ),
          )
        ),
        ),

        drawer: Container(
          color: Colors.brown,
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {},),
        );
    
  }
}