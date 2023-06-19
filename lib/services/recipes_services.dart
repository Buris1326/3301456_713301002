

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kirmizi_defter/models/recipes.dart';



class FirestoreRecipesService {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveRecipe(Recipes recipe) {
    return _db
        .collection('Recipes')
        .doc(recipe.id)
        .set(recipe.toMap());
  }

  Stream<List<Recipes>> getRecipes() {
    return _db.collection('recipes').snapshots().map((snapshot) => snapshot
        .docs
        .map((document) => Recipes.fromFirestore(document.data()))
        .toList());
  }


  Future<void> removeRecipe(String id) {
    return _db.collection('recipes').doc(id).delete();
  }

}
