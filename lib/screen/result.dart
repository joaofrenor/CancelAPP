import 'package:auto_size_text/auto_size_text.dart';
import 'package:provider/provider.dart';
import '../models/cancelamento.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ResultScreen extends StatelessWidget {
  final List<String> texts = [
    'ser atraente demais',
    'ter charme demais',
    'ser uma pessoa horrível',
    'ser uma grande gostosa',
    'ser boy/girl lixo',
    'ser comunista',
    'debochar demais',
    'ser inteligente demais',
    'ser padrãozinho',
    'pedir muito biscoito',
    'ser corno(a)',
    'ser uma delícia',
    'ser gado demais',
    'não ser ninguém',
    'ser poser',
    'ser insuportável',
    'ser insensível',
    'não fazer nada',
    'ser trouxa',
    'se atrasar sempre',
    'ser impaciente demais',
    'ser BV',
    'ter muita preguiça',
    'ser inútil',
    'ser inadimplente no Serasa',
    'contar muita piada ruim',
    'procrastinar demais',
    'por se considerar incancelável'
  ];

  @override
  Widget build(BuildContext context) {
    final cancelamento = Provider.of<Cancelamento>(context);

    _text(String text) {
      return Text(
        text,
        style: TextStyle(
          color: Colors.black54,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text('Seu Cancelamento'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 150),
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('images/logo.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Observer(builder: (_) {
              return _text('${cancelamento.name}');
            }),
            _text('foi cancelado por'),
            AutoSizeText(
              '${(texts..shuffle()).first.toUpperCase()}',
              maxFontSize: 34,
              minFontSize: 24,
              maxLines: 1,
              style: TextStyle(
                color: Colors.black,
                fontSize: 34,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
