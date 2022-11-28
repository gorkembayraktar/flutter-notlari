import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Kahveci extends StatelessWidget {
  const Kahveci({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          backgroundColor: Colors.blue,
          body: SafeArea(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 70.0,
                      backgroundColor: Colors.lime,
                      backgroundImage: AssetImage('assets/images/images.jpg'),
                    ),
                    Text(
                      'Flutter Uygulaması',
                      style: TextStyle(fontSize:45,color:Colors.blue[100],fontFamily: 'Cookie'),
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom:10),
                        child: Text('Bir fincan uzağınızda',style: GoogleFonts.lato())),


                    Container(
                        margin:EdgeInsets.symmetric(horizontal: 45.0),
                        padding:EdgeInsets.all(10.0),
                        color:Colors.blue[300],
                        child:Row(
                            children:[
                              Icon(Icons.email,color:Colors.white),
                              SizedBox(width: 20.0,),
                              Text('siparis@olustur2.com',
                                  style:TextStyle(fontSize: 20,color:Colors.white)
                              )
                            ]
                        )
                    ),
                    SizedBox(height: 15.0,),
                    Container(
                      margin:EdgeInsets.symmetric(horizontal: 45.0),
                      padding: EdgeInsets.all(10.0),
                      color:Colors.blue[400],
                      child: Row(
                        children: [
                          Icon(Icons.phone,color:Colors.white),
                          SizedBox(width: 20.0,),
                          Text('0 534 885 22 20',style:TextStyle(fontSize:20,color:Colors.white))
                        ],
                      ),
                    )
                  ],
                ),
              )
          ),
        )
    );
  }
}