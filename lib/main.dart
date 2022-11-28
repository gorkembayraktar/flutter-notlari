import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(YemekMenusu());
}

class YemekMenusu extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            centerTitle: true,
            title: Text(
              'Yemek Listesi Canlı',
              style: TextStyle(color: Colors.black),
            )
        ),
        body: YemekSayfasi()
      )
    );
  }
}


class YemekSayfasi extends StatefulWidget{

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int YemekNo = 1;

  int TatliNo = 1;

  int CorbaNo = 1;

  List<String> corbalar = [
     'Mercimek Çorbası',
     'Tarhana Çorbası',
     'Tavuk Suyu',
     'Düğün Çorbası test',
     'Yoğurtlu Çorba'
  ];
  List<String> yemekler = [
    'Karnıyarık',
    'Mantı',
    'Kuru fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatlilar = [
    'Kadayıf',
    'Baklava',
    'SÜtlaç',
    'Kazandibi',
    'Dondurma'
  ];


  void YemekleriYenile(){
    setState((){
        CorbaNo = Random().nextInt(5) + 1;
        YemekNo = Random().nextInt(5) + 1;
        TatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextButton(
                onPressed: () {
                    setState((){
                      CorbaNo = Random().nextInt(5) + 1;
                    });
                  },
                child: Image.asset('assets/yemekmenusu/corba_$CorbaNo.jpg')),
          )),
          Text(corbalar[CorbaNo-1], style: TextStyle(fontSize: 20)),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextButton(
                onPressed: () {
                  setState((){
                    YemekNo = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('assets/yemekmenusu/yemek_$YemekNo.jpg')),
          )),
          Text(yemekler[YemekNo-1], style:TextStyle(fontSize: 20)),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextButton(
                onPressed: (){
                  setState((){
                    TatliNo = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('assets/yemekmenusu/tatli_$TatliNo.jpg')),
          )),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(tatlilar[TatliNo - 1], style:TextStyle(fontSize: 20)),
          )
        ]
      )
    );
  }
}


