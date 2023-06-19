import 'package:flutter/material.dart';
import '../SQFlite/TarifDüzenleme.dart';
import '../SQFlite/TarifEkleme.dart';
import '../SQFlite/TarifSilme.dart';
import '../services/db utils.dart';



class TarifYerel extends StatefulWidget {



  @override
  _TarifYerelState createState() => _TarifYerelState();
}

class _TarifYerelState extends State<TarifYerel> {
  List<Map<String, dynamic>> _Tariflerlar = [];

  @override
  void initState() {
    super.initState();
    _getTariflerlar();
  }

  void _getTariflerlar() async {
    List<Map<String, dynamic>> Tariflerlar = await DatabaseHelper.instance.queryAllRows();
    setState(() {
      _Tariflerlar = Tariflerlar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tarif ekleme"),
      ),
      body: ListView.builder(
        itemCount: _Tariflerlar.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_Tariflerlar[index]['baslik']),
            subtitle: Text(_Tariflerlar[index]['malzemeler']),
            onTap: () {
              // Tarifler düzenleme sayfasına yönlendirme
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TariflerDuzenlemeSayfasi(tarifler: _Tariflerlar[index]),
                ),
              ).then((value) {
                _getTariflerlar();
              });
            },
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Yeni Tarifler ekleme sayfasına yönlendirme
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TariflerEklemeSayfasi(),
                ),
              ).then((value) {
                _getTariflerlar();
              });
            },
            child: Icon(Icons.add),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              // Tarifler silme sayfasına yönlendirme
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TariflerSilmeSayfasi(),
                ),
              ).then((value) {
                _getTariflerlar();
              });
            },
            child: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}