import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../model/recipe_model.dart';

class RecipeProvider with ChangeNotifier {
  Recipe? recipeModel;
  List<Recipe> search = [];
  recipeModels(QueryDocumentSnapshot element) {
    recipeModel = Recipe(
      recipeId: element.get("recipeId"),
      foodName: element.get("foodName"),
      foodDescription: element.get("foodDescription"),
      image: element.get("image"),
      time: element.get("time"),
      category: element.get("category"),
      favorite: element.get("favorite"),
      ingredients: element.get("ingredients"),
      instruction: element.get("instruction"),
    );
    search.add(recipeModel!);
  }

  List<Recipe> recipesList = [];
  getRecipesData() async {
    List<Recipe> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection('recipes').get();
    for (var element in value.docs) {
      recipeModels(element);
      newList.add(recipeModel!);
    }
    recipesList = newList;
    notifyListeners();
  }

  List<Recipe> get getRecipesDataList {
    return recipesList;
  }
}
