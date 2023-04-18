import 'package:kirmizi_defter/yardimciSayfalar/sayfaNesne.dart';
import 'package:flutter/material.dart';
import '../gecisEkranlari/sayfaGemlik.dart';

class sarayMuhallebisi extends StatelessWidget {
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
    title: Text('Saray Muhallebisi'),
    ),
    body:SingleChildScrollView(
    child:Text(sayfaNesne.sarayMuhallebisi,style: sayfaNesne.metinTipi,),
    )));
  }
}
