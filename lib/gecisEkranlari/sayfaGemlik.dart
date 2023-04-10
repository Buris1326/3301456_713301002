//tatlı seçeneklerinin bulunduğu sayfanın kodlarını içerir




import 'package:kirmizi_defter/tatliTarifleri/amonyakliPasta.dart';
import 'package:kirmizi_defter/tatliTarifleri/sarayMuhallebisi.dart';
import 'package:kirmizi_defter/gecisEkranlari/sayfaMudanya.dart';
import 'package:kirmizi_defter/yardimciSayfalar/sayfaNesne.dart';
import 'package:kirmizi_defter/tatliTarifleri/sutHelvasi.dart';
import 'package:flutter/material.dart';
import 'package:kirmizi_defter/tatliTarifleri/havucluKek.dart';


class sayfaGemlik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => sayfaMudanya()));
            },
          ),
          title: Text(sayfaNesne.l),
        ),
        body: SingleChildScrollView(
    child:


        Column(
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => sutHelvasi()));
                    },
                    child: Text(
                      sayfaNesne.sH,
                      style: const TextStyle(color: Colors.black87, fontSize: 22.16),
                    ),
                  ),
                ),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => sarayMuhallebisi()));
                    },
                    child: const Text(
                      "Saray Muhallebisi",
                      style: TextStyle(color: Colors.black87, fontSize: 22.16),
                    ),
                  ),
                ),
              ),
            ]),

            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.transparent)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => havucluKek()));
                    },
                    child: Text(
                      sayfaNesne.hK,
                      style: const TextStyle(color: Colors.black87, fontSize: 22.16),
                    ),
                  ),
                ),
              ),
            ]),

            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.transparent)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => amonyakliPasta() ));
                    },
                    child: Text(
                      sayfaNesne.aP,
                      style: const TextStyle(color: Colors.black87, fontSize: 22.16),
                    ),
                  ),
                ),
              ),
            ]),

          ],
        ),)
      ),
    );
  }
}
