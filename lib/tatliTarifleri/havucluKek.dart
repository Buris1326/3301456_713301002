import 'package:flutter/material.dart';
import '../yardimciSayfalar/sayfaNesne.dart';
import '../gecisEkranlari/sayfaTatlilar.dart';
import '../yardimciSayfalar/sayfaOnay.dart';

class havucluKek extends StatelessWidget {
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
        title: Text('Havuçlu kek',style: sayfaNesne.metinTipi,),
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
        child: Text(sayfaNesne.havucluKek,style: sayfaNesne.metinTipi,),


      ),
    ));
  }
}
