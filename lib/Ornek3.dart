import 'package:flutter/material.dart';

class Ornek3 extends StatelessWidget {
  const Ornek3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color:Colors.white,
                    child: Text('1.container'),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color:Colors.blue,
                    child: Text('2.container'),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color:Colors.green,
                    child: Text('3.container'),
                  ),
                ],
              )
          ),
        )
    );
  }
}

