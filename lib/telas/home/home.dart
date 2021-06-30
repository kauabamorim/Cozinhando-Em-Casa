import 'package:flutter/material.dart';
import 'dart:convert';
import '../../modelos/receita.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return _construirHome();
  }

  Widget _construirHome() {
    return Scaffold(
      body: _construirListaCard(),
      appBar: _construirAppBar(),
    );
  }

  Widget _construirListaCard() {
    return FutureBuilder(
        future:
            DefaultAssetBundle.of(context).loadString('assets/receitas.json'),
        builder: (context, snapshot) {
          List<dynamic> receitas = json.decode(snapshot.data.toString());

          return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              Receita receita = Receita.fromJson(receitas[index]);

              return _construirCard(receita.titulo, receita.foto);
            },
            itemCount: receitas == null ? 0 : receitas.length,
          );
        });
  }

  Widget _construirCard(titulo, foto) {
    return SizedBox(
        height: 300,
        child: Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  _construirImagemCard(foto),
                  _construirTextoCard(titulo)
                ],
              )
            ],
          ),
        ));
  }

  Widget _construirTextoCard(titulo) {
    return Positioned(
        bottom: 10,
        left: 10,
        child:
            Text(titulo, style: TextStyle(fontSize: 25, color: Colors.white)));
  }

  Widget _construirImagemCard(foto) {
    return Image.asset(
      foto,
      fit: BoxFit.fill,
      height: 280,
    );
  }

  _construirAppBar() {
    return AppBar(title: Text('Cozinhando em Casa'));
  }
}
