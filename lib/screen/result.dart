import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final List<String> cancelamento = [
    'ser atraente demais',
    'ter charme demais',
    'ser uma pessoa horrível',
    'ser uma grande gostosa',
    'ser boy lixo',
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text('Seu Cancelamento'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 150),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage('images/logo.png')),
            SizedBox(
              height: 10,
            ),
            Text(
              'João Felipe',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'foi cancelado por',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            AutoSizeText(
              '${(cancelamento..shuffle()).first.toUpperCase()}',
              maxFontSize: 34,
              minFontSize: 24,
              maxLines: 1,
              style: TextStyle(
                color: Colors.black54,
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
