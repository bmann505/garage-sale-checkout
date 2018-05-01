import 'package:flutter/material.dart';


class Seller extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return new SellerState();
  }


}

class SellerState extends State<Seller> {

  bool _isChecked = false;

  void onChanged(bool value) {
    setState(() {
      _isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          height: 100.0,
          width: 200.0,
          color: Colors.lightBlueAccent,
          margin: new EdgeInsets.all(15.0),
          child: new Row(
            children: <Widget>[
              new Checkbox(value: _isChecked, onChanged: (bool value) {onChanged(value);}),
              new Text('Seller A'),
            ],
          ),
        ),
      ],
    );
  }

}