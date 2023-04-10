import 'package:kirmizi_defter/yardimciSayfalar/sayfaOnay.dart';
import 'package:flutter/material.dart';
import '../gecisEkranlari/sayfaGemlik.dart';
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
            title: Text(sayfaNesne.aP),
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
                  "1 Su Bardağı Süt",
                  style: TextStyle(fontSize: 17.5),
                ),
                const Text(
                  '2 Yumurta',
                  style: TextStyle(fontSize: 17.5),
                ),
                const Text(
                  '1 Su Bardağı Şeker',
                  style: TextStyle(fontSize: 17.5),
                ),
                const Text(
                  '1 Su Bardağı Sıvıyağ',
                  style: TextStyle(fontSize: 17.5),
                ),
                const Text(
                  '1 Yemek Kaşığı Amonyak',
                  style: TextStyle(fontSize: 17.5),
                ),
                const Text(
                  '1 Pakte Kabartma Tozu',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  '1Paket Vanilya',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  '1 Paket Yaş Mayanın Yarısı\n Hamurun içine uvala ve mıncıkla.',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  'Aldığı Kadar Un',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  '',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  'Kreması İçin:',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  '2 Litre Süt',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  '4 Yemek Kaşığı Nişasta',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  '4 Yemek Kaşığı Un',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  '2 Paket Kakao',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  'İstediğin Kadar Şeker',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  '***NOT*** Bu ölçüdeki krema 4 adet bisküviyi ıslatmak için geçerli',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  '***NOT*** Bol bisküvili olursa daha güzel olur.',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  '',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  'Hazırlanış:',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  'Tüm malzemeleri bir kaba koy ve yoğur.',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  'Hamuru 30 dk dinlendir.',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  '8 eş parçaya böl ve orta boy tepsi boyutunda aç.',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  'Önceden ısıtılmış 170 derece turbo ayardaki fırında altı ve üstü kızarana kadar hamurları tek tek pişir',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  'Krema için bütün malzemeleri tencereye koy ve kaynayana kadar çırp.',

                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  'Tepsinin dibine kremadan koy ve üzerine bisküviden koy \n Bu şekilde her katında krema olacak şekilde 4 bisküviyi ıslat.',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  '***NOT*** Eğer tarifteki krema ölçüsü aynı şekilde kullanıldıysa 4 bisküvi.',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  '***NOT*** Pastanın her katına kremayı eşit dökmeye çalış ve en üst kısmına ayırmayı unutma.',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Text(
                  'Buzdolabında 1 gece beklet.',
                  style: TextStyle(fontSize: 20.0),
                ),

                const Text(
                  'Afiyet Olsun',
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
