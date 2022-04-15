import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String uid;
  String? name;
  String? email;
  String? role;

  User({
    required this.uid,
    this.name,
    this.email,
    this.role,
  });
  static User fromSnap(DocumentSnapshot snapshot) {
    var _snapshot = snapshot.data() as Map<String, dynamic>;
    return User(
      uid: _snapshot["uid"],
      name: _snapshot["name"],
      email: _snapshot["email"],
      role: _snapshot["role"],
    );
  }

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "name": name,
        "email": email,
        "role": role,
      };
}
