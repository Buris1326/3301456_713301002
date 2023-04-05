import 'package:deneme1/sayfaMudanya.dart';
import 'package:deneme1/sayfaNesne.dart';
import 'package:deneme1/sutHelvasi.dart';
import 'package:flutter/material.dart';

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
        body: Column(
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
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
                      "Süt Helvası",
                      style: TextStyle(color: Colors.black87, fontSize: 22.16),
                    ),
                  ),
                ),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
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
                      "Saray Muhallebisi",
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
