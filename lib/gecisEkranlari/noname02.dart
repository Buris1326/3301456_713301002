import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kirmizi_defter/functions/navigationFunction.dart';
import 'package:kirmizi_defter/gecisEkranlari/editiRecipesView.dart';
import 'package:kirmizi_defter/models/recipes.dart';
import 'package:kirmizi_defter/services/recipes_services.dart';
import 'package:provider/provider.dart';

class RecipesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Tarifler'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditRecipesView()),
              );
            },
          )
        ],
        leading: NavigationFunction().geriNavigasyon(context),
      ),
      body: StreamBuilder<List<Recipes>?>(
        stream: Provider.of<FirestoreRecipesService>(context).getRecipes(),
        builder: (context, snapshot) {
          final recipes = snapshot.data;

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (recipes == null || recipes.isEmpty) {
            return Center(
              child: Text('Tarif bulunamadı.'),
            );
          }

          return ListView.builder(
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              final recipe = recipes[index];

              return ListTile(
                leading: Icon(
                  Icons.beach_access,
                  color: Colors.blue,
                  size: 36.0,
                ),
                title: Text(recipe.name ?? ''),
                subtitle: Text(recipe.ingredients ?? ''),
                trailing: Text(recipe.clue ?? ''),
                isThreeLine: true,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EditRecipesView(recipe),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
