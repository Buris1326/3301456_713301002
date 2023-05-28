//şifre yenileme talebinin alındığı sayfa




import 'package:kirmizi_defter/kayitOl_sifreYenileme/sayfaAlt%C4%B1parmak.dart';
import 'package:flutter/material.dart';
import '../functions/navigationFunction.dart';

class sayfaTrilye extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: NavigationFunction().geriNavigasyon(context),
          title: Text('Şifremi Unuttum'),
          centerTitle: true,          //Başlığı başlık kısmında ortalar = true
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 18.5),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Ad',
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Soyad',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sayfaAltiparmak()));
                          },
                          child: Text('Gönder')))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

