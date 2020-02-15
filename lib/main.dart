import 'package:cancelamento/models/cancelamento.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screen/home.dart';
import './screen/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Cancelamento>(create: (_) => Cancelamento()),
      ],
      child: MaterialApp(
        title: 'Gerador de Cancelamento',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/result': (context) => ResultScreen(),
        },
      ),
    );
  }
}
