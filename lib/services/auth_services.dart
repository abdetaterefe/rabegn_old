import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/foundation.dart';
import 'package:rabegn/model/user_model.dart';

class AuthService {
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  User? _user(auth.User? user) {
    if (user == null) {
      return null;
    } else {}
    return User(uid: user.uid, email: user.email);
  }

  Stream<User?>? get user {
    return _firebaseAuth.authStateChanges().map(_user);
  }

  Future<User> getUserDetails() async {
    auth.User currentUser = _firebaseAuth.currentUser!;

    DocumentSnapshot documentSnapshot =
        await _firebaseFirestore.collection('users').doc(currentUser.uid).get();
    return User.fromSnap(documentSnapshot);
  }

  Future<User?> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return _user(credential.user);
    } on auth.FirebaseAuthException catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }

  Future<User?> signUpWithEmailAndPassword(
    String role,
    String name,
    String email,
    String password,
  ) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User _userInfo = User(
        uid: credential.user!.uid,
        name: name,
        email: email,
        role: 'user',
      );
      await _firebaseFirestore
          .collection('users')
          .doc(credential.user!.uid)
          .set(_userInfo.toJson());
      return _user(credential.user);
    } on auth.FirebaseAuthException catch (e) {
      print(e);
    }
    return null;
  }

  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }
}
