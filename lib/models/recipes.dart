class Recipes {
  final String? id;
  final String? name;
  final String? ingredients;
  final String? make;
  final String? clue;

  Recipes(
      {this.id, this.name, this.ingredients, this.make, this.clue});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'ingredients': ingredients,
      'make': make,
      'clue': clue
    };
  }

  Recipes.fromFirestore(Map<String, dynamic> firestore)
      : id = firestore['id'],
        name = firestore['name'],
        ingredients = firestore['ingredients'],
        make = firestore['make'],
        clue = firestore['clue'];
}
