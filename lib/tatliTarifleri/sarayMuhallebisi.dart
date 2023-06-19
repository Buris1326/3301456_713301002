import 'package:flutter/material.dart';
import 'package:kirmizi_defter/yardimciSayfalar/sayfaNesne.dart';

import '../functions/navigationFunction.dart';

class SarayMuhallebisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: NavigationFunction().geriNavigasyon(context),
        backgroundColor: Colors.purple,
        title: const Text('Saray Muhallebisi'),
      ),
      body: GestureDetector(
        onScaleUpdate: (ScaleUpdateDetails details) {
          if (details.scale < 0.6) {
            Navigator.pop(context);
          }
          },
        child: SingleChildScrollView(
          child: Text(
            sayfaNesne.sarayMuhallebisi,
            style: sayfaNesne.metinTipi,
          ),
        ),
      ),
    );
  }
}
