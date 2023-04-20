//Giriş Ekranının Kodlarını İçerir



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
        body: Container(
          margin: const EdgeInsets.only(top: 120),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Kırmızı Defter',
                    style: const TextStyle(fontSize: 25.0,
                    color: Colors.blueGrey),
                  )
                ],
              ),
              Row(         //kullanıcı adı
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        'Kullanıcı Adı:',
                        style: const TextStyle(fontSize: 18, color: Colors.blueGrey),
                      ),
                    ),
                  ),
                  Expanded(      //kullanıcı adı kutucuk
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(right: 20, top: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Kullanıcı Adı Giriniz:',
                              hintStyle: const TextStyle(
                                  color: Colors.blueGrey),
                              border: const OutlineInputBorder()),
                          style:const TextStyle(
                            color: Colors.blueGrey,
                            //backgroundColor: Colors.blueGrey
                          ) ,
                        ),
                      ))
                ],
              ),
              Row(          //şifre
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        'Şifre',
                        style: const TextStyle(fontSize: 18,
                            color: Colors.blueGrey ),
                      ),
                    ),
                  ),
                  Expanded(          //şifre kutucuk
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.only(right: 20, top: 20),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(

                          hintText: 'Şifrenizi Giriniz:',
                          hintStyle: const TextStyle(
                            color: Colors.blueGrey
                          ),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                      child: Text(
                        'Şifremi Unuttum',
                        style: const TextStyle(
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
                      child: Text(
                        'Kayıt Ol',
                        style: const TextStyle(
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
                  children: <Widget>[
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

                          child: Text(
                            'Giriş Yap',
                            style: const TextStyle(
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
      ),
    );
  }
}
