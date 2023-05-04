import 'package:kirmizi_defter/yardimciSayfalar/sayfaOnay.dart';
import 'package:flutter/material.dart';
import '../gecisEkranlari/sayfaTatlilar.dart';
import '../yardimciSayfalar/sayfaNesne.dart';

class sutHelvasi extends StatelessWidget {
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
        title: Text('Süt Helvası',style: sayfaNesne.metinTipi,),
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
        child: Text(sayfaNesne.sutHelvasi,style: sayfaNesne.metinTipi,),
      ),
    ));
  }
}
