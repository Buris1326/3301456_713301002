import '../yardimciSayfalar/sayfaNesne.dart';
import 'package:flutter/material.dart';
import '../gecisEkranlari/sayfaBursa.dart';

//kayıt ol sayfasının kodları


class sayfaKursunlu extends StatelessWidget {
  String kursunlu =
      'Üzgünüm Şuanda Kayıt Ol Aktif Değil Ana Sayfaya Dönmek İçin Bana Dokunabilirsin';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          /*leading: IconButton(
            icon: Icon(Icons.arrow_back),          Bu özellik kayıt ol eklenince aktif olacak.
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => sayfaBursa()));

            },
          ),

           */

          title: Text(
            'Kayıt Ol',
            style: const TextStyle(color: Colors.pink),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: TextButton(
                        style: const ButtonStyle(),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => sayfaBursa()),
                          );
                        },
                        child: Text(
                          kursunlu,
                          style: const TextStyle(
                            fontSize: 16.0,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Expanded(
                      child: Icon(
                    Icons.sentiment_very_dissatisfied,
                    size: 100,
                    color: Colors.red,
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
