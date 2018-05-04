import 'package:flutter/material.dart';
import 'seller.dart';


class GarageSale extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return new GarageSaleState();
  }

}

class GarageSaleState extends State<GarageSale>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Garage Sale Checkout'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: new Row(
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Seller(Colors.blueAccent, false, 'Seller A', 0, 0.00),
              new Seller(Colors.redAccent, false, 'Seller B', 0, 0.00),
              new Seller(Colors.greenAccent, false, 'Seller C', 0, 0.00),
            ],
          ),

        ],
      )
    );
  }

}