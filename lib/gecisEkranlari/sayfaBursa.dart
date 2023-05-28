//Giriş Ekranının Kodlarını İçerir



import 'package:kirmizi_defter/functions/Fonksiyonlar.dart';
import 'package:kirmizi_defter/kayitOl_sifreYenileme/sayfaKursunlu.dart';
import 'package:kirmizi_defter/kayitOl_sifreYenileme/sayfaTrilye.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../yardimciSayfalar/sayfaYildirim.dart';

class sayfaBursa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white10,
        body: Form(
        child: Container(
          margin: const EdgeInsets.only(top: 120),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    'Kırmızı Defter',
                    style: TextStyle(fontSize: 25.0,
                    color: Colors.deepOrangeAccent),
                  )
                ],
              ),
              Row(         //kullanıcı adı
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      child: const Text(
                        'Kullanıcı Adı:',
                        style: TextStyle(fontSize: 18, color: Colors.cyanAccent),
                      ),
                    ),
                  ),
                  Expanded(      //kullanıcı adı kutucuk
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(right: 20, top: 20),
                        child: TextFormField(
                          decoration: DecorationFunction().textFormFieldDecorations("Lütfen Kullanıcı Adınızı Giriniz", "kirmiziDefter16"),
                          style:TextStyle(
                            color: Colors.blueGrey,
                            //backgroundColor: Colors.blueGrey
                          ) ,
                        ),
                      ))
                ],
              ),
              Row(          //şifre
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(top: 20, left: 20),
                      child: const Text(
                        'Şifre',
                        style: TextStyle(fontSize: 18,
                            color: Colors.cyanAccent ),
                      ),
                    ),
                  ),
                  Expanded(          //şifre kutucuk
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.only(right: 20, top: 20),
                      child: TextFormField(
                        decoration: DecorationFunction().textFormFieldDecorations("Lütfen Şifrenizi Giriniz:", "******"),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(         //Şifre yenileme sayfasına gider
                      child: Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => sayfaTrilye()),
                        );
                      },
                      child: const Text(
                        'Şifremi Unuttum',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.cyanAccent,
                        ),
                      ),
                    ),
                  )),
                  Expanded(         //kayıt ol sayfasına gider
                      child: Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => sayfaKursunlu()),
                        );
                      },
                      child: const Text(
                        'Kayıt Ol',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.cyanAccent,
                        ),
                      ),
                    ),
                  )),
                ],
              ),
              Row(          //önce sayfaYildirim a 3 sn sonra da sayfaMudanya ya gider
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black38,
                            foregroundColor: Colors.cyan,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SayfaYildirim(child: Container())),
                            );
                          },

                          child: const Text(
                            'Giriş Yap',
                            style: TextStyle(
                                color: Colors.cyanAccent, fontSize: 12.0),
                          ),
                        ),
                      ),
                    ),


                  ]),

              Row(            //Sürekli dönüp duran şey
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget>[
                  Expanded(
                      child: Center(
                        child: SpinKitFoldingCube(
                          color: Colors.cyanAccent,
                          size: 95,
                        ),
                      ))
                ],
              ),],

          ),
        ),
      ),),
    );
  }
}