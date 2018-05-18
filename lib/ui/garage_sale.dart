import 'package:flutter/material.dart';
import 'seller.dart';
import 'sell_price.dart';


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
              new Seller(Colors.yellowAccent, false, 'Seller C', 0, 0.00),
              new Seller(Colors.deepPurpleAccent, false, 'Seller D', 0, 0.00),
              new Seller(Colors.lightBlueAccent, false, 'Seller E', 0, 0.00),
              new Seller(Colors.lightGreenAccent, false, 'Seller F', 0, 0.00),
              new Seller(Colors.orangeAccent, false, 'Seller G', 0, 0.00),
              new Seller(Colors.pinkAccent, false, 'Seller H', 0, 0.00),
              new Seller(Colors.white70, false, 'Seller I', 0, 0.00),
              new Seller(Colors.amberAccent, false, 'Seller J', 0, 0.00),
            ],
          ),
          new Column(
            children: <Widget>[
              new SellPrice(),
            ],
          ),

        ],
      )
    );
  }

}