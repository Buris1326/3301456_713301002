import 'package:flutter/material.dart';
import 'package:kirmizi_defter/services/recipes_services.dart';
import 'package:uuid/uuid.dart';
import 'package:kirmizi_defter/models/recipes.dart';

class RecipesForm extends StatefulWidget {
  @override
  _RecipesFormState createState() => _RecipesFormState();
}

class _RecipesFormState extends State<RecipesForm> {
  final firestoreService = FirestoreRecipesService();
  final formKey = GlobalKey<FormState>();

  String? _name;
  List<String> _ingredients = [];
  List<String> _make = [];
  List<String> _clue = [];

  void addIngredient(String ingredient) {
    setState(() {
      _ingredients.add(ingredient);
    });
  }

  void removeIngredient(int index) {
    setState(() {
      _ingredients.removeAt(index);
    });
  }

  void addMake(String make) {
    setState(() {
      _make.add(make);
    });
  }

  void removeMake(int index) {
    setState(() {
      _make.removeAt(index);
    });
  }

  void addClue(String clue) {
    setState(() {
      _clue.add(clue);
    });
  }

  void removeClue(int index) {
    setState(() {
      _clue.removeAt(index);
    });
  }

  void saveRecipes() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      var uuid = Uuid();
      var recipes = Recipes(
        id: uuid.v4(),
        name: _name!,
        ingredients: _ingredients.join(', '),
        // Joining list elements with a separator
        make: _make.join(', '),
        // Joining list elements with a separator
        clue: _clue.join(', '), // Joining list elements with a separator
      );

      try {
        await firestoreService.saveRecipe(recipes);

        // Yemek tarifi kaydedildikten sonra yapılacak işlemler
        // Örneğin, formu sıfırlamak veya kullanıcıya geri bildirim vermek
        formKey.currentState!.reset();
        _ingredients.clear();
        _make.clear();
        _clue.clear();

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Yemek tarifi kaydedildi.'),
          ),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Yemek tarifi kaydedilirken hata oluştu: $e'),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
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
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Yemek Tarifi Adı',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Lütfen yemek tarifi adını girin.';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _name = value;
                    },
                  ),
                  SizedBox(height: 16.0),
                  Text('Malzemeler', style: TextStyle(fontSize: 16.0)),
                  SizedBox(height: 8.0),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: _ingredients.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_ingredients[index]),
                        trailing: IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () => removeIngredient(index),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 8.0),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          String newIngredient = '';
                          return AlertDialog(
                            title: Text('Malzeme Ekle'),
                            content: TextFormField(
                              autofocus: true,
                              onChanged: (value) {
                                newIngredient = value;
                              },
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  addIngredient(newIngredient);
                                  Navigator.pop(context);
                                },
                                child: Text('Ekle'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('Malzeme Ekle'),
                  ),
                  SizedBox(height: 16.0),
                  Text('Yapılışı', style: TextStyle(fontSize: 16.0)),
                  SizedBox(height: 8.0),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: _make.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_make[index]),
                        trailing: IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () => removeMake(index),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 8.0),
                  Text("data001"),
                  SizedBox(
                    height: 8,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: _clue.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_clue[index]),
                        trailing: IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () => removeClue(index),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          String newMake = '';
                          return AlertDialog(
                            title: Text('Adım Ekle'),
                            content: TextFormField(
                              autofocus: true,
                              onChanged: (value) {
                                newMake = value;
                              },
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  addMake(newMake);
                                  Navigator.pop(context);
                                },
                                child: Text('Ekle'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('Adım Ekle'),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: saveRecipes,
                    child: Text('Kaydet'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
