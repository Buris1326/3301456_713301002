import 'package:flutter/material.dart';
import 'package:kirmizi_defter/services/db%20utils.dart';

class TariflerDuzenlemeSayfasi extends StatefulWidget {
  final Map<String, dynamic> tarifler;

  TariflerDuzenlemeSayfasi({required this.tarifler});

  @override
  _TariflerDuzenlemeSayfasiState createState() => _TariflerDuzenlemeSayfasiState();
}

class _TariflerDuzenlemeSayfasiState extends State<TariflerDuzenlemeSayfasi> {

  late TextEditingController _baslikController;
  late TextEditingController _malzemelerController;
  late TextEditingController _yapilisController;

  @override
  void initState() {
    super.initState();

    _baslikController = TextEditingController(text: widget.tarifler[DatabaseHelper.columnBaslik]);
    _malzemelerController = TextEditingController(text: widget.tarifler[DatabaseHelper.columnMalzemeler]);
    _yapilisController = TextEditingController(text: widget.tarifler[DatabaseHelper.columnYapilis]);
  }

  @override
  void dispose() {

    _baslikController.dispose();
    _malzemelerController.dispose();
    _yapilisController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarifler Düzenle'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [

            TextField(
              controller: _baslikController,
              decoration: InputDecoration(
                labelText: 'Başlık',
              ),
            ),
            TextField(
              controller: _malzemelerController,
              decoration: InputDecoration(
                labelText: 'Malzemeler',
              ),
            ),
            TextField(
              controller: _yapilisController,
              decoration: InputDecoration(
                labelText: 'Yapılış',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                Map<String, dynamic> row = {

                  DatabaseHelper.columnBaslik: _baslikController.text,
                  DatabaseHelper.columnMalzemeler: _malzemelerController.text,
                  DatabaseHelper.columnYapilis: _yapilisController.text,
                };
                await DatabaseHelper.instance.update(row);
                Navigator.pop(context);
              },
              child: Text('Güncelle'),
            ),
          ],
        ),
      ),
    );
  }
}
