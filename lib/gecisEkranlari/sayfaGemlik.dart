//tatlı seçeneklerinin bulunduğu sayfanın kodlarını içerir

import 'package:kirmizi_defter/tatliTarifleri/amonyakliPasta.dart';
import 'package:kirmizi_defter/tatliTarifleri/cikolataliKek.dart';
import 'package:kirmizi_defter/tatliTarifleri/firinSutlac.dart';
import 'package:kirmizi_defter/tatliTarifleri/lazBoregi.dart';
import 'package:kirmizi_defter/tatliTarifleri/misirKeki.dart';
import 'package:kirmizi_defter/tatliTarifleri/muhallebi.dart';
import 'package:kirmizi_defter/tatliTarifleri/sarayMuhallebisi.dart';
import 'package:kirmizi_defter/gecisEkranlari/sayfaMudanya.dart';
import 'package:kirmizi_defter/tatliTarifleri/starbucksKurabiye.dart';
import 'package:kirmizi_defter/tatliTarifleri/surprizKurabiye.dart';
import 'package:kirmizi_defter/tatliTarifleri/tahinliCorek.dart';
import 'package:kirmizi_defter/tatliTarifleri/trilece.dart';
import 'package:kirmizi_defter/yardimciSayfalar/sayfaNesne.dart';
import 'package:kirmizi_defter/tatliTarifleri/sutHelvasi.dart';
import 'package:flutter/material.dart';
import 'package:kirmizi_defter/tatliTarifleri/havucluKek.dart';

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
                    MaterialPageRoute(builder: (context) => Sayfa_kategori()));
              },
            ),
            title: Text(
              'Tatlılar',
              style: sayfaNesne.butonMetintipi,
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: sayfaNesne.butonStili,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => sutHelvasi()));
                            },
                            child: Text(
                              'Süt Helvası',
                              style: sayfaNesne.butonMetintipi,
                            ),
                          ),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: sayfaNesne.butonStili,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          sarayMuhallebisi()));
                            },
                            child: Text(
                              "Saray Muhallebisi",
                              style: sayfaNesne.butonMetintipi,
                            ),
                          ),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: sayfaNesne.butonStili,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => havucluKek()));
                            },
                            child: Text(
                              'Havuçlu Kek',
                              style: sayfaNesne.butonMetintipi,
                            ),
                          ),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: sayfaNesne.butonStili,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => amonyakliPasta()));
                            },
                            child: Text(
                              'Amonyaklı Pasta',
                              style: sayfaNesne.butonMetintipi,
                            ),
                          ),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: sayfaNesne.butonStili,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => misirKeki()));
                            },
                            child: Text(
                              'Mısır Keki',
                              style: sayfaNesne.butonMetintipi,
                            ),
                          ),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: sayfaNesne.butonStili,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => cikolataliKek()));
                            },
                            child: Text(
                              'Çikolatalı Kek Tadında Islak Kek',
                              style: sayfaNesne.butonMetintipi,
                            ),
                          ),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: sayfaNesne.butonStili,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => surprizKurabiye()));
                            },
                            child: Text(
                              'Sürpriz Kurabiye',
                              style: sayfaNesne.butonMetintipi,
                            ),
                          ),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: sayfaNesne.butonStili,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => tahinliCorek()));
                            },
                            child: Text(
                              'Tahinli Çörek',
                              style: sayfaNesne.butonMetintipi,
                            ),
                          ),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: sayfaNesne.butonStili,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => starbucksKurabiye()));
                            },
                            child: Text(
                              'Starbucks Kurabiye',
                              style: sayfaNesne.butonMetintipi,
                            ),
                          ),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: sayfaNesne.butonStili,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => lazBoregi()));
                            },
                            child: Text(
                              'Laz Böreği',
                              style: sayfaNesne.butonMetintipi,
                            ),
                          ),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: sayfaNesne.butonStili,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => firinSutlac()));
                            },
                            child: Text(
                              'Fırın Sütlaç',
                              style: sayfaNesne.butonMetintipi,
                            ),
                          ),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: sayfaNesne.butonStili,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => muhallebi()));
                            },
                            child: Text(
                              'Muhallebi',
                              style: sayfaNesne.butonMetintipi,
                            ),
                          ),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: sayfaNesne.butonStili,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => trilece()));
                            },
                            child: Text(
                              'Trileçe',
                              style: sayfaNesne.butonMetintipi,
                            ),
                          ),
                        ),
                      ),
                    ]),
              ],
            ),
          )),
    );
  }
}
