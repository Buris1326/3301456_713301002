import 'package:flutter/material.dart';
import 'package:kirmizi_defter/models/recipes.dart';
import 'package:kirmizi_defter/providers/recipes_provider.dart';
import 'package:provider/provider.dart';

class EditRecipesView extends StatefulWidget {
  final Recipes? recipe;

  EditRecipesView([this.recipe]);

  @override
  _EditRecipesViewState createState() => _EditRecipesViewState();
}

class _EditRecipesViewState extends State<EditRecipesView> {
  final nameController = TextEditingController();
  final ingredientsController = TextEditingController();
  final makeController = TextEditingController();
  final clueController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    ingredientsController.dispose();
    makeController.dispose();
    clueController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    if (widget.recipe == null) {
      // New Record
      nameController.text = "";
      ingredientsController.text = "";
      makeController.text = "";
      clueController.text = "";
      new Future.delayed(Duration.zero, () {
        final recipesProvider =
            Provider.of<RecipesProvider>(context, listen: false);
        recipesProvider.loadValues(Recipes());
      });
    } else {
      // Controller Update
      nameController.text = widget.recipe?.name ?? "";
      ingredientsController.text = widget.recipe?.ingredients ?? "";
      makeController.text = widget.recipe?.make ?? "";
      clueController.text = widget.recipe?.clue ?? "";
      // State Update
      new Future.delayed(Duration.zero, () {
        final recipesProvider =
            Provider.of<RecipesProvider>(context, listen: false);
        recipesProvider.loadValues(widget.recipe!);
      });
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final recipesProvider = Provider.of<RecipesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Yeni Yemek Tarifi Ekle'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF536976), Color(0xFF292E49)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: <Widget>[
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Yemek Tarifi Adı',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Lütfen yemek tarifi adını girin.';
                }
                return null;
              },
              onChanged: (value) {
                recipesProvider.changeName(value);
              },
            ),
            SizedBox(height: 16.0),
            Text('Malzemeler', style: TextStyle(fontSize: 16.0)),
            SizedBox(height: 8.0),

            //Buraya başka değişiklikler yapılabilir

            TextFormField(
              controller: ingredientsController,
              autofocus: true,
              decoration: InputDecoration(hintText: 'Malzemeler'),
              onChanged: (value) {
                recipesProvider.changeIngredients(value);
              },
            ),

            SizedBox(height: 16.0),
            Text('Yapılışı', style: TextStyle(fontSize: 16.0)),
            SizedBox(height: 8.0),

            TextFormField(
              controller: makeController,
              decoration: InputDecoration(labelText: 'Adım Ekle'),
              onChanged: (value) {
                recipesProvider.changeMake(value);
              },
            ),

            SizedBox(height: 16.0),
            Text('İpuçları', style: TextStyle(fontSize: 16.0)),
            SizedBox(height: 8.0),

            TextFormField(
              autofocus: true,
              controller: clueController,
              decoration: InputDecoration(labelText: 'İpucu Ekle'),
              onChanged: (value) {
                recipesProvider.changeClue(value);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              child: Text('Save'),
              onPressed: () {
                recipesProvider.saveRecipe();
                Navigator.of(context).pop();
              },
            ),
            (widget.recipe != null)
                ? ElevatedButton(
              child: Text('Delete'),
              onPressed: () {
                if (widget.recipe?.id != null) {
                  final recipesProvider = Provider.of<RecipesProvider>(context, listen: false);
                  recipesProvider.removeRecipe(widget.recipe!.id!);
                }
                Navigator.of(context).pop();
              },
            )

                : Container(),
          ],
        ),
      ),
    );
  }
}
