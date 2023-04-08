//Kategorilerin bulunduğu sayfa



import 'package:deneme1/sayfaInegol.dart';
import 'package:deneme1/sayfaIznik.dart';
import 'package:deneme1/sayfaNesne.dart';
import 'package:deneme1/sayfaOsmangazi.dart';
import 'package:flutter/material.dart';
import 'sayfaBursa.dart';
import 'sayfaGemlik.dart';

class sayfaMudanya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => sayfaBursa()));

          },
        ),
        title: Text(sayfaNesne.k),
      ),
      body: Column(

        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    sayfaNesne.l + ': ',
                    style: const TextStyle(fontSize: 18, color: Colors.limeAccent),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                  child: Container(

                margin: const EdgeInsets.only(right: 20, top: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreenAccent),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sayfaGemlik()));
                  },
                  child: Text(sayfaNesne.l,
                      style: const TextStyle(color: Colors.black)),
                ),
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    sayfaNesne.m + ': ',
                    style: const TextStyle(fontSize: 18,color: Colors.limeAccent),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.only(right: 20, top: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => sayfaOsmangazi()));
                      },
                      child: Text(sayfaNesne.m),
                    ),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(left: 20, top: 20),
                  child: const Text(
                    'Kendi Tarifini Ekle',
                    style: TextStyle(fontSize: 18,color: Colors.limeAccent),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.only(right: 20, top: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyanAccent,

                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => sayfaInegol()));
                      },
                      child: Text('Ekle',
                      style: TextStyle(color: Colors.black54),
                      textScaleFactor: 1.2),
                    ),
                  )),



            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(left: 20, top: 20),
                  child: const Text(
                    'Ölçüsünü Bul',
                    style: TextStyle(fontSize: 18,color: Colors.limeAccent),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.only(right: 20, top: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyanAccent,

                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => sayfaIznik()));
                      },
                      child: Text('Bul',
                          style: TextStyle(color: Colors.black54),
                          textScaleFactor: 1.2),
                    ),
                  )),



            ],
          ),
            ],
          )

    ));
  }
}
