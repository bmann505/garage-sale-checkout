import 'package:flutter/material.dart';


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
    );
  }

}