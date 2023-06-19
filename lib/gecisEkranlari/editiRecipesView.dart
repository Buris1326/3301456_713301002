import 'package:flutter/material.dart';
import 'package:kirmizi_defter/models/recipes.dart';
import 'package:kirmizi_defter/providers/recipes_provider.dart';
import 'package:provider/provider.dart';



class EditRecipesView extends StatefulWidget {
  final Recipes? domainfirm;

  EditRecipesView([this.domainfirm]);

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
    if (widget.domainfirm == null) {
      //New Record
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
      //Controller Update
      nameController.text = widget.domainfirm!.name!;
      ingredientsController.text = widget.domainfirm!.ingredients!;
      makeController.text = widget.domainfirm!.make!;
      clueController.text = widget.domainfirm!.clue!;
      //State Update
      new Future.delayed(Duration.zero, () {
        final recipesProvider =
        Provider.of<RecipesProvider>(context, listen: false);
        recipesProvider.loadValues(widget.domainfirm!);
      });
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final recipesProvider = Provider.of<RecipesProvider>(context);

    return Scaffold(
      appBar: AppBar(
          title: (widget.domainfirm != null)
              ? Text('Edit Domain Firm')
              : Text('Add Domain Firm')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(hintText: 'Domain Firm Name'),
              onChanged: (value) {
                recipesProvider.changeName(value);
              },
            ),
            TextField(
              controller: ingredientsController,
              decoration: InputDecoration(hintText: 'Domain Firm Login Name'),
              onChanged: (value) {
                recipesProvider.changeIngredients(value);
              },
            ),
            TextField(
              controller: makeController,
              decoration:
              InputDecoration(hintText: 'Domain Firm Login Password'),
              onChanged: (value) {
                recipesProvider.changeMake(value);
              },
            ),
            TextField(
              controller: clueController,
              decoration: InputDecoration(hintText: 'Domain Firm clue'),
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
            (widget.domainfirm != null)
                ? ElevatedButton(
              child: Text('Delete'),
              onPressed: () {
                recipesProvider.removeRecipe(widget.domainfirm!.id!);
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
