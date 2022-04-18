// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:rabegn/model/recipe_model.dart';

// class FireStoreService {
//   final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

//   Future<void> saveRecipe(Recipe recipe) async {}
//   Stream<List<Recipe>> getRecipe() {
//     return _firebaseFirestore.collection('recipes').snapshots().map(
//         (snapshot) => snapshot.docs
//             .map((document) => Recipe.fromFirestore(document))
//             .toList());
//   }

//   Future<void> removeRecipe(String recipeId) async {}
// }
