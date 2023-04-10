import 'package:flutter/material.dart';
import 'gecisEkranlari/sayfaBursa.dart';
//import 'sayfaMudanya.dart';
//import 'sayfaGemlik.dart';



void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: sayfaBursa(),
    );
  }
}
