//Kategorilerin bulunduğu sayfa



import 'package:kirmizi_defter/gecisEkranlari/sayfaTuzlular.dart';
import 'package:kirmizi_defter/gecisEkranlari/tarifEkle.dart';
import 'package:kirmizi_defter/gecisEkranlari/sayfaOlcu.dart';
import 'package:flutter/material.dart';
import 'sayfaBursa.dart';
import 'sayfaTatlilar.dart';


class SayfaKategori extends StatelessWidget {
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
        title: Text('Canın Ne İstiyor ?'),
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
                  child: Row(
                    children: [

                      Text(
                        'Tatlılar: ',
                        style: const TextStyle(fontSize: 18, color: Colors.limeAccent),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.only(right: 20, top: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreenAccent,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => sayfaGemlik()));
                    },
                    child: Text(
                      'Tatlılar',
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
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
                      'Tuzlular: ',
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
                                builder: (context) => Sayfa_tuzlular()));
                      },
                      child: Text('Tuzlular'),
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
                                builder: (context) => Tarif_ekle()));
                      },
                      child: const Text('Ekle',
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
                                builder: (context) => SayfaOlcu()));
                      },
                      child: const Text('Bul',
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
