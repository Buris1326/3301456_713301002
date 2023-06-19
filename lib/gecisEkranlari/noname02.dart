/*
import 'package:flutter/material.dart';
import 'package:kirmizi_defter/services/recipes_services.dart';
import 'package:kirmizi_defter/models/recipes.dart';

class RecipesPage extends StatefulWidget {
  @override
  _RecipesPageState createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  final firestoreService = FirestoreRecipesService();

  List<Recipes> _recipesList = [];

  @override
  void initState() {
    super.initState();
    _loadRecipes();
  }

  Future<void> _loadRecipes() async {
    Stream<List<Recipes>> recipesStream = await firestoreService.getRecipes();

    recipesStream.listen((List<Recipes> recipes) {
      setState(() {
        _recipesList = recipes;
      });
    });
  }





  Future<void> _deleteRecipe(String? recipeId) async {
    if (recipeId != null) {
      await firestoreService.removeRecipe(recipeId);
      await _loadRecipes();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yemek Tarifleri'),
      ),
      body: ListView.builder(
        itemCount: _recipesList.length,
        itemBuilder: (context, index) {
          Recipes recipe = _recipesList[index];
          return ListTile(
            title: Text(recipe?.name ?? ''),
            subtitle: Text(recipe?.ingredients ?? ''),
            onTap: () {
              // Tarifi düzenlemek için ilgili sayfaya yönlendirme yapabilirsiniz.
              // Örneğin: Navigator.push...
            },
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => _showDeleteConfirmationDialog(recipe?.id),
            ),
          );

        },
      ),
    );
  }

  Future<void> _showDeleteConfirmationDialog(String? recipeId) async {
    if (recipeId != null) {
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Tarifi Sil'),
            content: Text('Bu tarifi silmek istediğinize emin misiniz?'),
            actions: <Widget>[
              TextButton(
                child: Text('İptal'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text('Sil'),
                onPressed: () {
                  Navigator.of(context).pop();
                  _deleteRecipe(recipeId);
                },
              ),
            ],
          );
        },
      );
    }
  }
}
*/




import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kirmizi_defter/gecisEkranlari/editiRecipesView.dart';
import 'package:kirmizi_defter/models/recipes.dart';
import 'package:provider/provider.dart';


class RecipesView extends StatelessWidget {
  String name = "";
  String loginname = "";
  String loginpassword = "";
  String web = "";

  @override
  Widget build(BuildContext context) {
    final recipes = context.watch<List<Recipes>>();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Domain Firms'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => EditRecipesView()));
            },
          )
        ],
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu_rounded,
                size: 40,
                color: Colors.black,
              ),
              color: Colors.black,
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
      ),

      body: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(
                Icons.beach_access,
                color: Colors.blue,
                size: 36.0,
              ),
              title: Text(recipes[index].name!),
              subtitle: Text(recipes[index].ingredients!),
              trailing: Text(recipes[index].clue!),
              isThreeLine: true,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        EditRecipesView(recipes[index])));
              },
            );
          }),
    );
  }
}
