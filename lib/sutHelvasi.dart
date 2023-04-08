import 'package:deneme1/sayfaOnay.dart';
import 'package:flutter/material.dart';
import 'sayfaGemlik.dart';
import 'sayfaNesne.dart';

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
        title: const Text("Süt Helvasının Tarifi"),
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
              '1 Su Bardağı Un',
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
              'Yapılış',
              style: TextStyle(fontSize: 20.0),
            ),
            const Text(
              'Sütü ve şekeri bir tencereye koyup ocağa al. ',
              style: TextStyle(fontSize: 20.0),
            ),
             const Text(
              'Şeker eriyene kadar karıştır. Sakın Kaynatma',
              style: TextStyle(fontSize: 20.0),
            ),
            const Text(
              'Başka bir tencerede margarin veya tereyağını erit üzerine unu ekle ve kısık ateşte 20-25 dk kavur',
              style: TextStyle(fontSize: 20.0),
            ),
            const Text(
              'Undan kavruk kokusu çıkınca sütü unun içerisine 4-5 adımda ekle ve her adımda iyice çırp ki topaklanmasın',
              style: TextStyle(fontSize: 20.0),
            ),
            const Text(
              'Tüm sütü ekledikten sonra ocağın altını aç. 3-4 dk kadar kaynat ve altını kapatıp vanilya ekle',
              style: TextStyle(fontSize: 20.0),
            ),
            const Text(
              'Kıvamının muhallebi kıvamında ve renginin de sütlü kahve olması lazım. Koklayınca bebek maması kokusu gelmeli',
              style: TextStyle(fontSize: 20.0),
            ),
            const Text(
              'İsteğe bağlı güveç kap, ısıya dayanıklı cam veya suffle kabına döküp 220 derece fırında turbo modda üzeri kızarıncaya kadar pişir',
              style: TextStyle(fontSize: 20.0),
            ),
            const Text(
              'Fırından çıkarınca üzerine dövülmüş fındık ve/veya ceviz koyabilirsin.',
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
