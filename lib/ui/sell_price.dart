import 'package:flutter/material.dart';


class SellPrice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return new SellPriceState();
  }

}

class SellPriceState extends State<SellPrice> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 672.0,
      width: 650.0,
      color: Colors.grey,
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new PriceBox(.05),
              new PriceBox(.10),
            ],

          ),
          new Row(
            children: <Widget>[
              new PriceBox(.25),
              new PriceBox(.50),
            ],
          ),
          new Row(
            children: <Widget>[
              new PriceBox(.75),
              new PriceBox(1.00),
            ],
          ),
          new Row(
            children: <Widget>[
              new PriceBox(1.50),
              new PriceBox(2.00),
            ],
          ),
        ],
      )
    );

  }
}

class PriceBox extends StatefulWidget {
  final double _sellPrice;

  PriceBox(this._sellPrice);

  @override
  State<StatefulWidget> createState() {
    return new PriceBoxState(_sellPrice);
  }
}

class PriceBoxState extends State<PriceBox> {

 var _numberController = new TextEditingController();


final double _sellPrice;

PriceBoxState(this._sellPrice);

  @override
  void initState() {
    super.initState();
    _numberController = new TextEditingController(text: _sellPrice.toString());
  }
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      height: 110.0,
      width: 110.0,
      margin: new EdgeInsets.only(left: 125.0, top: 25.0, bottom: 2.5, right: 2.5),
      child: new Row(
        children: <Widget>[
          new Container(
            child: new Icon(Icons.attach_money),
          ),
          new Container(
            height: 60.0,
            width: 75.0,
            child:  new TextField(
              controller: _numberController,
              textAlign: TextAlign.center,
              decoration: new InputDecoration(
              ),
              style: new TextStyle(
                fontSize: 28.0,
                color: Colors.black,
              ),
              keyboardType: TextInputType.number,
            )
          ),
        ],
      ),
    );
  }
}