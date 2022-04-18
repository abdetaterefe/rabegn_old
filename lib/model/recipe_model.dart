class Recipe {
  String? recipeId;
  String? foodName;
  String? foodDescription;
  String? image;
  int? time;
  String? category;
  bool? favorite;
  List<dynamic>? ingredients;
  List<dynamic>? instruction;

  Recipe({
    required this.recipeId,
    required this.foodName,
    required this.foodDescription,
    required this.image,
    required this.time,
    required this.category,
    required this.favorite,
    required this.ingredients,
    required this.instruction,
  });

  // Map<String, dynamic> createMap() {
  //   return {
  //     'recipeId': recipeId,
  //     'foodName': foodName,
  //     'foodDescription': foodDescription,
  //     'image': image,
  //     'time': time,
  //     'category': category,
  //     'favorite': favorite,
  //     'ingredients': ingredients,
  //     'instruction': instruction,
  //   };
  // }

  // static Recipe fromFirestore(DocumentSnapshot documentSnapshot) {
  //   var snapshot = documentSnapshot.data() as Map<String, dynamic>;
  //   return Recipe(
  //     recipeId: snapshot['recipeId'],
  //     foodName: snapshot['foodName'],
  //     foodDescription: snapshot['foodDescription'],
  //     image: snapshot['image'],
  //     time: snapshot['time'],
  //     category: snapshot['category'],
  //     favorite: snapshot['favorite'],
  //     ingredients: snapshot['ingredients'],
  //     instruction: snapshot['instruction'],
  //   );
  // }
}
