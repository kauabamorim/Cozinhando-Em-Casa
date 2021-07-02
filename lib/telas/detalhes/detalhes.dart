import 'package:flutter/material.dart';
import '../../modelos/receita.dart';

class Detalhes extends StatelessWidget {
  final Receita receita;

  Detalhes({required this.receita});

  @override
  Widget build(BuildContext context) {
    return _construirDetalhes();
  }

  Widget _construirDetalhes() {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _construirImagemDetalhes(receita.foto),
          _construirTituloDetalhes(receita.titulo),
          _construirLinhaIconesDetalhes(
              '${receita.porcoes} porções', receita.tempoPreparo),
          _construirSubtituloDetalhes('Ingredientes'),
          _construirTextoDetalhes(receita.ingredientes),
          _construirSubtituloDetalhes('Modo de Preparo'),
          _construirTextoDetalhes(receita.modoPreparo),
        ],
      ),
      appBar: _construirAppBar(),
    );
  }

  Widget _construirImagemDetalhes(imagem) {
    return Image.asset(imagem);
  }

  Widget _construirTituloDetalhes(titulo) {
    return Center(
        child: Text(
      titulo,
      style: TextStyle(color: Colors.purple, fontSize: 34, fontWeight: FontWeight.bold),
    ));
  }

  Widget _construirLinhaIconesDetalhes(rendimento, tempo_preparo) {
    return Row(
      children: [
        _construirColunaIconeDetalhes(Icons.restaurant, rendimento),
        _construirColunaIconeDetalhes(Icons.timer, tempo_preparo),
      ],
    );
  }

  Widget _construirColunaIconeDetalhes(icone, texto) {
    return Expanded(
        child: Column(
      children: [
        Icon(
          icone,
          color: Colors.purple,
        ),
        Text(
          texto,
          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ],
    ));
  }

  Widget _construirSubtituloDetalhes(subtitulo) {
    return Center(
        child: Text(
          subtitulo,
          style: TextStyle(fontSize: 23),
    ));
  }

  Widget _construirTextoDetalhes(texto) {
    return Container(
      child: Text(
        texto,
        style: TextStyle(fontSize: 15),),
        padding: EdgeInsets.all(9),
    );
  }

  _construirAppBar() {
    return AppBar(title: Text('Cozinhando em Casa'));
  }
}
