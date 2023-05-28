//Kategorilerin bulunduğu sayfa

import 'package:kirmizi_defter/functions/navigationFunction.dart';
import 'package:kirmizi_defter/gecisEkranlari/kiler.dart';
import 'package:kirmizi_defter/gecisEkranlari/sayfaTuzlular.dart';
import 'package:kirmizi_defter/gecisEkranlari/tarifEkle.dart';
import 'package:kirmizi_defter/gecisEkranlari/sayfaOlcu.dart';
import 'package:flutter/material.dart';
import 'sayfaTatlilar.dart';

class SayfaKategori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white10,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: NavigationFunction().geriNavigasyon(context),
              title: const Text('Canın Ne İstiyor ?'),
            ),
            body: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.only(left: 20, top: 20),
                        child: Row(
                          children: const [
                            Text(
                              'Tatlılar: ',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.limeAccent),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                          margin: const EdgeInsets.only(right: 20, top: 20),
                          child: NavigationFunction().elevatedButton(
                              Colors.lightGreenAccent,
                              sayfaGemlik(),
                              "Tatlılar",
                              context)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.only(left: 20, top: 20),
                        child: const Text(
                          'Tuzlular: ',
                          style:
                              TextStyle(fontSize: 18, color: Colors.limeAccent),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: NavigationFunction().elevatedButton(
                            Colors.deepOrangeAccent,
                            SayfaTuzlular(),
                            "Tuzlular",
                            context))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.only(left: 20, top: 20),
                        child: const Text(
                          'Kendi Tarifini Ekle',
                          style:
                              TextStyle(fontSize: 18, color: Colors.limeAccent),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: NavigationFunction().elevatedButton(Colors.purpleAccent, Tarif_ekle(), "Ekle", context)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.only(left: 20, top: 20),
                        child: const Text(
                          'Ölçüsünü Bul',
                          style:
                              TextStyle(fontSize: 18, color: Colors.limeAccent),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: NavigationFunction().elevatedButton(Colors.deepPurpleAccent, SayfaOlcu(), "Bul", context)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.only(left: 20, top: 20),
                        child: const Text(
                          'Evdekilerle tarif',
                          style:
                          TextStyle(fontSize: 18, color: Colors.limeAccent),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: NavigationFunction().elevatedButton(Colors.greenAccent, Kiler(), "Kiler", context)),


                  ],
                ),
              ],
            )));
  }
}
