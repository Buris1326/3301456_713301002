//Ölçü belirleyici sayfanın kodlarını içeriyor





import 'package:deneme1/gecisEkranlari/sayfaMudanya.dart';
import 'package:flutter/material.dart';

class sayfaIznik extends StatefulWidget {
  const sayfaIznik({Key? key}) : super(key: key);

  @override
  State<sayfaIznik> createState() => _sayfaIznikState();
}

class _sayfaIznikState extends State<sayfaIznik> {
  String _malzeme = "";
  Widget _malzemeDetayi = Container();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.limeAccent,
        appBar: AppBar(
            backgroundColor: Colors.cyanAccent,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => sayfaMudanya()));
                })),
        body: SafeArea(
          child: Column(
            children: [
              const Text('Ölçülecek Malzeme'),

              DropdownButton(
                items: const [
                  DropdownMenuItem(
                    value: 'Şeker',
                    child: Text('Şeker'),
                  ),
                  DropdownMenuItem(
                    value: 'Un',
                    child: Text('Un'),
                  ),
                  DropdownMenuItem(
                    value: 'Yağ',
                    child: Text('Yağ'),
                  ),
                  DropdownMenuItem(
                    value: 'Süt',
                    child: Text('Süt'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _malzeme = value.toString();

                    if (_malzeme == 'Şeker') {
                      _malzemeDetayi = Expanded(
                        child: Column(
                          children: const [
                            Text("1 su bardağı şeker = 180 gram"),
                            Text("3/4 su bardağı şeker = 140 gram"),
                            Text("2/3 su bardağı şeker = 115 gram"),
                            Text("1/2 su bardağı şeker = 90 gram"),
                            Text("1/3 su bardağı şeker = 60 gram"),
                            Text("1/4 su bardağı şeker = 35 gram"),
                            Text("1 yemek kaşığı şeker = 15 gram"),
                            Text("Tepeleme 1 yemek kaşığı şeker= 23 gram"),
                            Text("1 tatlı kaşığı şeker = 8 gram"),
                            Text("1 çay kaşığı şeker = 4 gram"),
                          ],
                        ),
                      );
                    } else if (_malzeme == 'Un') {
                      _malzemeDetayi = Expanded(
                        child: Column(
                          children: const [
                            Text("1 su bardağı un = 120 gram"),
                            Text("3/4 su bardağı un = 90 gram"),
                            Text("2/3 su bardağı un = 80 gram"),
                            Text("1/2 su bardağı un = 60 gram"),
                            Text("1/3 su bardağı un = 40 gram"),
                            Text("1/4 su bardağı un = 30 gram"),
                            Text("1 yemek kaşığı un = 9 gram"),
                            Text("1 tatlı kaşığı un = 3 gram"),
                          ],
                        ),
                      );
                    } else if (_malzeme == 'Yağ') {
                      _malzemeDetayi = Expanded(
                        child: Column(
                          children: const [
                            Text("Yağ Ölçüleri Çok Yakında Burada Olacak"),
                          ],
                        ),
                      );
                    } else if (_malzeme == 'Süt') {
                      _malzemeDetayi = Expanded(
                        child: Column(
                          children: const [
                            Text("1 su bardağı süt = 210 gram "),
                            Text("3/4 su bardağı süt = 180 gram"),
                            Text("2/3 su bardağı süt = 150 gram"),
                            Text("1/2 su bardağı süt = 120 gram"),
                            Text("1/3 su bardağı süt = 80 gram"),
                            Text("1/4 su bardağı süt = 60 gram"),
                            Text("1 yemek kaşığı süt = 15 gram"),
                            Text("1 tatlı kaşığı süt = 5gram"),
                            Text("1 çay kaşığı süt = 2 gram"),
                          ],
                        ),
                      );
                    }
                  });
                },
              ),

              _malzemeDetayi,
              //Text(_malzeme),
            ],
          ),
        ),
      ),
    );
  }
}
