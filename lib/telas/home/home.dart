import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return _construirHome();
  }

  Widget _construirHome() {
    return Scaffold(
      body: _construirCard(),
      appBar: _construirAppBar(),
    );
  }

  Widget _construirCard() {
    return SizedBox(
        height: 300,
        child: Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  _construirImagemCard(),
                  _construirTextoCard()
                ],
              )
            ],
          ),
      ));
    }

    Widget _construirTextoCard() {
      
      return Positioned(
        bottom: 10,
        left: 10,
        child: Text('Bolo de Cenoura', style: TextStyle(fontSize: 25, color: Colors.white)));
    }

    Widget _construirImagemCard(){
      return Image.asset('assets/images/bolo-cenoura.jpeg', fit: BoxFit.fill, height: 280,);
    }

    _construirAppBar() {
    return AppBar(title: Text('Cozinhando em Casa'));
  }
}
