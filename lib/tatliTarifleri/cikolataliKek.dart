import 'package:flutter/material.dart';
import 'package:kirmizi_defter/gecisEkranlari/sayfaTatlilar.dart';
import 'package:kirmizi_defter/yardimciSayfalar/sayfaOnay.dart';
import 'package:kirmizi_defter/yardimciSayfalar/sayfaNesne.dart';

class cikolataliKek extends StatelessWidget {
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
            title: Text('Çikolatalı Kek Tadında Islak Kek',style: sayfaNesne.metinTipi,),
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
            child:
            Column(
              children: [
                Text(sayfaNesne.cikolataliKek,style: sayfaNesne.metinTipi)
              ],
            ),
          ),)
    );
  }
}
