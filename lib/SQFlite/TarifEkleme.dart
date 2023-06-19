import 'package:flutter/material.dart';
import 'package:kirmizidefter/services/db%20utils.dart';

class TariflerEklemeSayfasi extends StatelessWidget {
  final TextEditingController _baslikController = TextEditingController();
  final TextEditingController _malzemelerController = TextEditingController();
  final TextEditingController _yapilisController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yeni Tarifler Ekle'),
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
                  'baslik': _baslikController.text,
                  'malzemeler': _malzemelerController.text,
                  'yapilis': _yapilisController.text,
                };
                await DatabaseHelper.instance.insert(row);
                Navigator.pop(context);
              },
              child: Text('Kaydet'),
            ),
          ],
        ),
      ),
    );
  }
}
