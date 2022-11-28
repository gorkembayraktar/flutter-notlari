import 'package:flutter/material.dart';
class Odev1 extends StatelessWidget {
  const Odev1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.black,
        body:SafeArea(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch ,

              children: [
                Container(
                    height: 100,
                    color: Colors.white,
                    child: Text("Container 1")
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color:Colors.red,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color:Colors.yellow,
                      height: 100,
                      width: 100,
                    )
                  ],
                ),
                Container(
                    height: 100,
                    color: Colors.blue,
                    child: Text("Container 1")
                )
              ],
            )
        ),
      ),
    );
  }
}
