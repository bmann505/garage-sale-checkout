import 'package:flutter/material.dart';

class Seller extends StatefulWidget {
  var _containerColor;
  bool _checkBoxValue = false;
  String _sellerName = 'Seller';
  int _soldItems = 0;
  double _sellerMoney = 0.00;

  @override
  State<StatefulWidget> createState() {
    return new SellerState(_containerColor, _checkBoxValue, _sellerName, _soldItems, _sellerMoney);
  }

  Seller(this._containerColor, this._checkBoxValue, this._sellerName,
      this._soldItems, this._sellerMoney);


}

class SellerState extends State<Seller> {
  var _containerColor;
  bool _checkBoxValue = false;
  String _sellerName;
  int _soldItems = 0;
  double _sellerMoney = 0.00;


  SellerState(this._containerColor, this._checkBoxValue, this._sellerName,
      this._soldItems, this._sellerMoney);

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


