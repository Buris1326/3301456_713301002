import 'package:deneme1/sayfaKursunlu.dart';
import 'package:deneme1/sayfaNesne.dart';
import 'package:deneme1/sayfaTrilye.dart';
import 'package:flutter/material.dart';
import 'sayfaMudanya.dart';

class sayfaBursa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 120),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    sayfaNesne.g,
                    style: const TextStyle(fontSize: 25.0),
                  )
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
                        sayfaNesne.h + ":",
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(right: 20, top: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: sayfaNesne.h + ' ' + sayfaNesne.i,
                              border: const OutlineInputBorder()),
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
                      margin: const EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        sayfaNesne.f,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.only(right: 20, top: 20),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: sayfaNesne.f + 'nizi ' + sayfaNesne.i,
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => sayfaTrilye()),
                        );
                      },
                      child: Text(
                        sayfaNesne.b,
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => sayfaKursunlu()),
                        );
                      },
                      child: Text(
                        sayfaNesne.a,
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  )),
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            //Bu iki satır butonun rengini değiştirir.
                            backgroundColor: Colors.black38,
                            //Bu satır butona basıldığında alta kırmızı çizgi çiziyor
                            foregroundColor: Colors
                                .cyan, //Bu satır butona basılıyken renk değiştirmeyi sağlar.
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sayfaMudanya()));
                          },
                          child: Text(
                            sayfaNesne.j,
                            style: const TextStyle(
                                color: Colors.cyan, fontSize: 12.0),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
