//Giriş Ekranının Kodlarını İçerir



import 'package:deneme1/sayfaKursunlu.dart';
import 'package:deneme1/sayfaNesne.dart';
import 'package:deneme1/sayfaTrilye.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'sayfaYildirim.dart';
//import 'package:deneme1/sayfaYildirim.dart';
//import 'sayfaMudanya.dart';

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
                    sayfaNesne.g,
                    style: const TextStyle(fontSize: 25.0,
                    color: Colors.blueGrey),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        sayfaNesne.h + ":",
                        style: const TextStyle(fontSize: 18, color: Colors.blueGrey),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(right: 20, top: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: sayfaNesne.h + ' ' + sayfaNesne.i,
                              hintStyle: TextStyle(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        sayfaNesne.f,
                        style: const TextStyle(fontSize: 18,
                            color: Colors.blueGrey ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.only(right: 20, top: 20),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(

                          hintText: sayfaNesne.f + 'nizi ' + sayfaNesne.i,
                          hintStyle: TextStyle(
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
                  Expanded(
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
                        sayfaNesne.b,
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.cyanAccent,
                        ),
                      ),
                    ),
                  )),
                  Expanded(
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
                        sayfaNesne.a,
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.cyanAccent,
                        ),
                      ),
                    ),
                  )),
                ],
              ),
              Row(
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
                            sayfaNesne.j,
                            style: const TextStyle(
                                color: Colors.cyanAccent, fontSize: 12.0),
                          ),
                        ),
                      ),
                    ),


                  ]),

              Row(
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
              ),
              Column(

                children: <Widget>[Container(
                  margin: EdgeInsets.only(top: 275.5),
                    child:
                    const Align(
                      alignment: Alignment.center,
                      child: Text("Sayfa Yildirim kısmı bana ait değil.\n Görüp beğendiğim bir yapıyı kendi uygulamama uyarladım,\n üzerinde biraz değişiklik yaptım fakat tamamı bana ait değil.",
                      style: TextStyle(
                        color: Colors.blueGrey
                      ),),
                    )

                )],
              )

            ],

          ),
        ),
      ),
    );
  }
}
