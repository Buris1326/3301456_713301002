import 'package:flutter/material.dart';
import 'package:kirmizi_defter/models/recipes.dart';
import 'package:kirmizi_defter/services/recipes_services.dart';
import 'package:uuid/uuid.dart';

class RecipesProvider with ChangeNotifier {

  final firestoreService = FirestoreRecipesService();
  String? _id;
  String? _name;
  String? _ingredients;
  String? _make;
  String? _clue;

  var uuid = Uuid();

  String? get id => _id;

  String? get name => _name;

  String? get ingredients => _ingredients;

  String? get make => _make;

  String? get clue => _clue;

  changeName(String value) {
    _name = value;
    notifyListeners();
  }

  changeIngredients(String value) {
    _ingredients = value;
    notifyListeners();
  }

  changeMake(String value) {
    _make = value;
    notifyListeners();
  }

  changeClue(String value) {
    _clue = value;
    notifyListeners();
  }

  loadValues(Recipes recipe) {
    _id = recipe.id;
    _name = recipe.name;
    _ingredients = recipe.ingredients;
    _make = recipe.make;
    _clue = recipe.clue;
  }

  saveRecipe() {
    if (_id == null) {
      var newRecipe = Recipes(
          id: uuid.v4(),
          name: name,
          ingredients: ingredients,
          make: make,
          clue: clue);
      firestoreService.saveRecipe(newRecipe);
    } else {
      //Update
      var updatedRecipe = Recipes(
          id:id,
          name: name,
          ingredients: ingredients,
          make: make,
          clue: clue);
      firestoreService.saveRecipe(updatedRecipe);
    }
  }

  removeRecipe(String id) {
    firestoreService.removeRecipe(id);
  }
}
