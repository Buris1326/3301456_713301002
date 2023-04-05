import 'package:deneme1/sayfaAlt%C4%B1parmak.dart';
import 'package:deneme1/sayfaNesne.dart';
import 'package:flutter/material.dart';
import 'sayfaBursa.dart';

class sayfaTrilye extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => sayfaBursa()));
              // Geri tuşuna basıldığında yapılacak işlemler buraya yazılabilir.
            },
          ),
          title: Text(sayfaNesne.b),
          centerTitle: true,
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 18.5),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: sayfaNesne.c,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: sayfaNesne.d,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sayfaAltiparmak()));
                          },
                          child: Text(sayfaNesne.e)))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
