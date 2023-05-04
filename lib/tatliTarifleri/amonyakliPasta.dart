import 'package:kirmizi_defter/yardimciSayfalar/sayfaOnay.dart';
import 'package:flutter/material.dart';
import '../gecisEkranlari/sayfaTatlilar.dart';
import '../yardimciSayfalar/sayfaNesne.dart';

class amonyakliPasta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => sayfaGemlik(),
                  ),
                );
              },
            ),
            title: Text('Amonyaklı Pasta',style: sayfaNesne.metinTipi,),
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => sayfaOnay()),
                  );
                },
                icon: const Icon(Icons.star_purple500_sharp),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Text(sayfaNesne.amonyakliPasta,style: sayfaNesne.metinTipi),
          ),
        ));
  }
}
