import 'package:flutter/material.dart';

// class WidgetHome extends StatelessWidget {
//   const WidgetHome({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TelaInicial();
//   }
// }

// primeiro classe
class TelaInicial extends StatefulWidget{
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

// segunda classe
class _TelaInicialState extends State<TelaInicial>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Qual é mais vantajoso?',
        style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body(){
    return Container(
      color: Colors.grey,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _text(),
            _foto(),
            _campoEtanol(),
            _campoGasolina(),
            _botaoEnviar()
            ],
        ),
      )
    );
  }

  _text(){
    return const Text(
      "Álcool ou gasolina?",
      style: TextStyle(
        fontSize: 25,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _foto(){
    return Center(
      child: Image.network(
        'https://licencesolucoes.com.br/wp-content/uploads/2020/07/original-cdfc69162edccef3c40b3b70243031ff.jpeg',
        height: 280,
        width: 280,
      ),
    );
  }

  _campoEtanol(){
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: "Digite o preço do litro do etanol:",
        labelStyle: TextStyle(
          color: Colors.black,
        )
      ),
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 20
      ),
    );
  }

  _campoGasolina(){
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: "Digite o preço da gasolina:",
        labelStyle: TextStyle(
          color: Colors.black,
        )
      ),
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 20
      ),
    );
  }

  _botaoEnviar(){
    return RaisedButton(
      color: Colors.black,
      onPressed: verificaNulo(),
      child: Text(
        "Enviar",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  verificaNulo(){
    if((_campoGasolina() != null) && (_campoEtanol() != null)){
      return valeAPena();
    }
  }

  valeAPena(){
    
  }
}