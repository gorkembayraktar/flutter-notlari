import 'package:flutter/material.dart';


class Ornek1 extends StatelessWidget {
  const Ornek1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey[100],
          appBar: AppBar(
            centerTitle: true,
            title: Text('Başlık Burası'),
            backgroundColor: Colors.blueGrey[800],
          ),
          body: Center(
            child: Image.asset('images/images.jpg'),
          ),
        ));
  }
}