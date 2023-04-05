import 'package:deneme1/sayfaBursa.dart';
import 'package:flutter/material.dart';
//import 'sayfaTrilye.dart';

class sayfaAltiparmak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(left: 50, top: 200),
          width: 300,
          height: 200,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => sayfaBursa(),
                ),
              );
            },
            child: const Text(
              "Şifre Yenileme Talebin Alındı Mail Adresini Kontrol Etmelisin.",
              style: TextStyle(
                  fontSize: 15.6,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration
                      .underline //Burada textin altını çizdim .underline sayesinde
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
