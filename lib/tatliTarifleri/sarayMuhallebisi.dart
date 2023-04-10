import 'package:deneme1/yardimciSayfalar/sayfaOnay.dart';
import 'package:flutter/material.dart';
import '../gecisEkranlari/sayfaGemlik.dart';
import '../yardimciSayfalar/sayfaNesne.dart';

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
            title: const Text("Saray Muhallebisinin Tarifi"),
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
            child: Column(
              children: [
                Text(
                  sayfaNesne.n,
                  style: const TextStyle(fontSize: 17.5),
                ),
                const Text(
                  "1 Litre Süt",
                  style: TextStyle(fontSize: 17.5),
                ),
                const Text(
                  '100 gr Tereyağı veya Margarin',
                  style: TextStyle(fontSize: 17.5),
                ),
                const Text(
                  '4 Yemek Kaşığı Un',
                  style: TextStyle(fontSize: 17.5),
                ),
                const Text(
                  '1 Su Bardağı Şeker',
                  style: TextStyle(fontSize: 17.5),
                ),
                const Text(
                  '1 Paket Vanilya',
                  style: TextStyle(fontSize: 17.5),
                ),
                const Text(
                  '1 Adet Yumurta Sarısı',
                  style: TextStyle(fontSize: 17.5),
                ),
                const Text(
                  'Yapılış',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  'Sütü kısık ateşte ısıt. ',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  'Şekeri ve yumurta sarısını bir kapta çırp.',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  'Bu karışımı süte ilave edip karıştırarak şekerin erimesini sağla.',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  'Şeker eriyince hemen ocağın altını kapat şerbet çok sıcak olmamalı.',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  'Başka bir tencerede margarin veya tereyağını eritip unu ekle ve kavur.',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  'Kavurduğun una sütü yavaş yavaş ekle ve topaklanmaması için karıştır.',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  'Muhallebi kıvamına gelinceye kadar kaynat sonra ocağın altını kapat.',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  'Vanilyayıda ekle ve 2-3 dk daha karıştır daha sonra bir kaba koyup dolaba koy soğuyunca yiyebilirsin.',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  'AFİYET OLSUN',
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  sayfaNesne.MI,
                  style: const TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ),
        ));
  }
}
