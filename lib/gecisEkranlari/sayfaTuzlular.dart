//tuzlu yiyeceklerin bulunduğu başlık butonlar









import 'package:kirmizi_defter/gecisEkranlari/sayfaKategori.dart';
import 'package:kirmizi_defter/yardimciSayfalar/sayfaNil%C3%BCfer.dart';
import 'package:flutter/material.dart';

class Sayfa_tuzlular extends StatelessWidget {
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
                  MaterialPageRoute(builder: (context) => Sayfa_kategori()));
            },
          ),
          title: Text('Tatlılar'),
        ),
        body: Column(
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
                              builder: (context) => sayfaNilufer()));
                    },
                    child: const Text(
                      "Açma Poğaça",
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
                              builder: (context) => sayfaNilufer()));
                    },
                    child: const Text(
                      "Bit Kurabiye",
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
                              builder: (context) => sayfaNilufer()));
                    },
                    child: const Text(
                      "Örme Çörek",
                      style: TextStyle(color: Colors.black87, fontSize: 22.16),
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
