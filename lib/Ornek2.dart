import 'package:flutter/material.dart';


class Ornek2 extends StatelessWidget {
  const Ornek2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lime,
          body: SafeArea(
            child: Container(
              width: 100,
              height: 200,
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadiusDirectional.circular(16.0),
                  color: Colors.white),
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.symmetric(horizontal: 30,vertical: 25),
              child: Transform(
                child: Text('merhaba'),
                transform: Matrix4.rotationZ(-0.2),
              ),
            ),
          ),
        ));
  }
}
