import 'package:flutter/material.dart';

class FloatButton extends StatelessWidget {
  final Function action;
  FloatButton(this.action);

  @override
  Widget build(BuildContext context) {
    final bool iphonex = MediaQuery.of(context).size.height >= 812.0;
    final double bottomPadding = iphonex ? 5.0 : 0.0;
    return Container(
      margin: EdgeInsets.symmetric(vertical: bottomPadding),
      child: InkWell(
        onTap: this.action,
        child: Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.red[700],
            borderRadius: BorderRadius.circular(40),
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.cancel, color: Colors.white),
              SizedBox(
                width: 7,
              ),
              Text(
                'Gerar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
