import 'package:cancelamento/components/float_button.dart';
import 'package:cancelamento/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeScreen extends StatelessWidget {
  final controller = Controller();

  _input({context, onChanged, String Function() errorText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.92,
          height: 55,
          margin: EdgeInsets.symmetric(vertical: 20),
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextField(
                onChanged: onChanged,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.create,
                    color: Colors.grey,
                  ),
                  hintText: 'Digite seu nome',
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            errorText() ?? '',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerador de Cancelamento'),
        backgroundColor: Colors.red[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage('images/logo.png')),
          SizedBox(
            height: 20,
          ),
          Text(
            'Quem será cancelado?',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Observer(
            builder: (_) {
              return _input(
                context: context,
                onChanged: controller.cancelamento.changeName,
                errorText: controller.validateName,
              );
            },
          ),
          SizedBox(
            height: 104,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Observer(builder: (_) {
        return FloatButton(() {
          if (controller.isValid) Navigator.pushNamed(context, '/result');
        });
      }),
    );
  }
}
