import 'package:flutter/material.dart';
import 'package:kirmizi_defter/gecisEkranlari/gallery/mixed.dart';

//import 'package:kirmizi_defter/gecisEkranlari/noname.dart';
import 'package:kirmizi_defter/gecisEkranlari/noname02.dart';
import 'package:kirmizi_defter/gecisEkranlari/sayfaOlcu.dart';
import 'package:kirmizi_defter/gecisEkranlari/sayfaTatlilar.dart';
import 'package:kirmizi_defter/gecisEkranlari/sayfaTuzlular.dart';
import 'package:kirmizi_defter/gecisEkranlari/tarifEkle.dart';
import 'package:kirmizi_defter/graphic/LineChartSample2State.dart';

//import '../RecipeAdd.dart';
import 'kiler.dart';

class SayfaKategori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[800], // Arka plan rengi

        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Canın Ne İstiyor?',
            style: TextStyle(
              color: Colors.black, // Başlık rengi
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SayfaTatlilar()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  // Buton arka plan rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                  textStyle: const TextStyle(
                    color: Colors.white, // Buton metin rengi
                    fontSize: 18,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.cake_outlined, // Tatlı simgesi
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    const Text('Tatlılar'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SayfaTuzlular()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent, // Buton arka plan rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                  textStyle: const TextStyle(
                    color: Colors.white, // Buton metin rengi
                    fontSize: 18,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.fastfood_outlined, // Tuzlu simgesi
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    const Text('Tuzlular'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TarifYerel()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.tealAccent, // Buton arka plan rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                  textStyle: const TextStyle(
                    color: Colors.black, // Buton metin rengi
                    fontSize: 18,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.add_box_outlined, // Ekle simgesi
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    const Text('Kendi Tarifini Ekle'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SayfaOlcu()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent, // Buton arka plan rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                  textStyle: const TextStyle(
                    color: Colors.white, // Buton metin rengi
                    fontSize: 18,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.search_outlined, // Ölçü simgesi
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    const Text('Ölçüsünü Bul'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Kiler()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent, // Buton arka plan rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                  textStyle: const TextStyle(
                    color: Colors.black, // Buton metin rengi
                    fontSize: 18,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.shopping_cart_outlined, // Kiler simgesi
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    const Text('Evdekilerle Tarif'),
                  ],
                ),
              ),
              /*ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RecipeAddPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent, // Buton arka plan rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                  textStyle: const TextStyle(
                    color: Colors.black, // Buton metin rengi
                    fontSize: 18,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.shopping_cart_outlined, // Kiler simgesi
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    const Text('DENEME01'),
                  ],
                ),
              ),

               */

              /*ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RecipesForm()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent, // Buton arka plan rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                  textStyle: const TextStyle(
                    color: Colors.black, // Buton metin rengi
                    fontSize: 18,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.shopping_cart_outlined, // Kiler simgesi
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    const Text('DENEME02'),
                  ],
                ),
              ),*/

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RecipesView()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent, // Buton arka plan rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                  textStyle: const TextStyle(
                    color: Colors.black, // Buton metin rengi
                    fontSize: 18,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.shopping_cart_outlined, // Kiler simgesi
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    const Text('DENEME03'),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WatermelonChart()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent, // Buton arka plan rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                  textStyle: const TextStyle(
                    color: Colors.black, // Buton metin rengi
                    fontSize: 18,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.shopping_cart_outlined, // Kiler simgesi
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    const Text('DENEME04'),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mixed()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent, // Buton arka plan rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                  textStyle: const TextStyle(
                    color: Colors.black, // Buton metin rengi
                    fontSize: 18,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.shopping_cart_outlined, // Kiler simgesi
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    const Text('DENEME05'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
