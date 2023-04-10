import 'package:flutter/material.dart';
import '../yardimciSayfalar/sayfaNesne.dart';
import '../gecisEkranlari/sayfaGemlik.dart';
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
        title: Text(sayfaNesne.hK),
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
            const SizedBox(
              height: 10,
            ),
            const Text(
              "3 Yumurta",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "2 Su Bardağı Şeker",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "1 Su Bardağı Sıvıyağ",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "Yarım Su Bardağı Süt",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "3 Avuç Ceviz",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "1 Avuç Kuru Üzüm",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "5-6 Adet Havuç (Havuç çok aşırı büyük ise 4 tane de olur)",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "1 Tatlı Kaşığı Tarçın",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "1 Çay Kaşığı Tarçın",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "1 Çay Kaşığı Toz Zencefi",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "Yarım Çay Kaşığı Tuz",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "Çeyrek Muskat",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "1 Paket Kabartma Tozu",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "Dolu Dolu 1 Çay Kaşığı Karbonat",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "1 Paket Vanilya",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "3,5 Su Bardağı Un",
              style: TextStyle(fontSize: 17.5),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              sayfaNesne.o,
              style: const TextStyle(fontSize: 17.5),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Su kaynat üzümleri bir kaba koy ve üzerine kaynar suyu dök.",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "Üzümler şişince süz.",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "Cevizi ve üzümleri kabaca parçala",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "Havuçları rendele ve suyu çıktıysa sıkarak suyunu at çöpe.",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "Fırını alt-üst ayarda 180 derecede ısınması için çalıştır.",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "Yumurta ve şekeri, şeker eriyinceye kadar çırp.",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "Yağı ve sütü ekleyip tekrar çırp.",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "Havuçları ekleyip bir spatula veya kaşık yardımı ile karıştır. \n Eğer bu ve bundan sonraki adımları alttan yukarı doğru kapatarak karıştırırsan hamuru söndürmemiş olursun ve daha güzel kabarır.",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "Cevizi ve üzümleri de karışıma ekle ve kaıştır.",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "Unu ekle ve karıştır",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "***NOT*** Un dahil bütün toz haldeki malzemeleri eleyerek kullanırsan daha iyi kabarır.",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "Kalan bütün malzemeleri de ekle ve son bir kez karıştır.",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "Hamurunda topak halde un kalmadığından emin oluna kadar karıştır.",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "24 cm kelepçeli kek kalıbına karışımı tam ortasına olacak şekilde her yerine eşit olarak dök.",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "Kalıbı masaya 3-4 defa vurdur kabarcıklar çıkması için.",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "1 saat 10 dk sonra kek hazır. Üzeri çatlayıp içini çekince fırından çıkarabilirsin.",
              style: TextStyle(fontSize: 17.5),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "***NOT*** \n Kekin üzeri çatlamadan sakın fırının kapağını açma eğer açarsan kek söner.",
              style: TextStyle(fontSize: 17.5),
            ),
            const Text(
              "***NOT*** \n Keki fırından çıkarır çıkarmaz sakın kesme içini hamurlaştırırsın. 5-6 dk ilk ısısının çıkmasını bekle.",
              style: TextStyle(fontSize: 17.5),
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
