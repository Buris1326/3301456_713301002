import 'package:flutter/material.dart';

class Fonksiyon {



 IconButton geriNavigasyon (BuildContext context){
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
  //Bu fonksiyon ekranın sol üst köşesinde bulunup basıldığında geri gitmeye yarar.



}