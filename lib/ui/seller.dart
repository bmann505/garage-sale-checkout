import 'package:flutter/material.dart';

class Seller extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SellerState();
  }

}

class SellerState extends State<Seller> {
  var _containerColor = Colors.blueAccent;
  bool _checkBoxValue = false;
  String _sellerName = 'Seller';
  int _soldItems = 0;
  double _sellerMoney = 0.00;




  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
            color: _containerColor,
            height: 67.2,
            width: 250.0,
            child: new Row(
              children: <Widget>[
                new Checkbox(value: _checkBoxValue,
                    onChanged: (bool newValue) {
                      setState(() {
                        _checkBoxValue = newValue;
                      });
                    }),
                new Container(
                    height: 30.0,
                    width: 100.0,
                    child: new TextField(
                      decoration: new InputDecoration(
                        hintText: _sellerName,
                      ),
                    )
                )
              ],
            )
        ),
      ],
    );
  }

}


