import 'package:flutter/material.dart';

class sayfaIznik extends StatefulWidget {
  const sayfaIznik({Key? key}) : super(key: key);

  @override
  State<sayfaIznik> createState() => _sayfaIznikState();
}

class _sayfaIznikState extends State<sayfaIznik> {

  String _malzeme="";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Text('mrn'),
              DropdownButton(items: [
                DropdownMenuItem(child: Text('Şeker'),value: 'Şeker',),
                DropdownMenuItem(child: Text('Un'),value: 'Un',),
                DropdownMenuItem(child: Text('Yağ'),value: 'Yağ',),
                DropdownMenuItem(child: Text('Süt'),value: 'Süt',),
              ], onChanged: (value){

                setState(() {
                  _malzeme=value.toString();

                  if(_malzeme=='Şeker'){
                    Column(
                      children: [
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
                    );
                  }
                });



              }
              
              ),
              Text(_malzeme)
            ],
          ),
        ),
      ),
    );
  }
}
