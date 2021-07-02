import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _construirDetalhes();
  }

  Widget _construirDetalhes() {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _construirImagemDetalhes('assets/images/ratatouille.jpg'),
          _construirTituloDetalhes('Ratatouille'),
          _construirLinhaIconesDetalhes('2-3 porções', '50min'),
          _construirSubtituloDetalhes('Ingredientes'),
          _construirTextoDetalhes('Aqui serao exibido os ingredientes dessa receita'),
          _construirSubtituloDetalhes('Modo de Preparo'),
          _construirTextoDetalhes('Aqui sera exibido o modo de preparo dessa receita'),
        ],
      ),
      appBar: _construirAppBar(),
    );
  }

  Widget _construirImagemDetalhes(imagem) {
    return Image.asset(imagem);
  }

  Widget _construirTituloDetalhes(titulo) {
    return Text(
      titulo,
      style: TextStyle(color: Colors.purple, fontSize: 30),
    );
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
    return Text(
      subtitulo,
      style: TextStyle(fontSize: 20),
    );
  }

  Widget _construirTextoDetalhes(texto) {
    return Text(texto);
  }

  _construirAppBar() {
    return AppBar(title: Text('Cozinhando em Casa'));
  }
}
