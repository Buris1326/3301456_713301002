import 'package:flutter/material.dart';
import 'package:kirmizi_defter/services/db%20utils.dart';

class TariflerSilmeSayfasi extends StatelessWidget {
  final TextEditingController _baslikController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarifler Sil'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _baslikController,
              decoration: InputDecoration(
                labelText: 'Tarifler Başlık',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                String baslik = _baslikController.text;
                await DatabaseHelper.instance.deleteByBaslik(baslik);

                Navigator.pop(context);
              },
              child: Text('Sil'),
            ),
          ],
        ),
      ),
    );
  }
}
