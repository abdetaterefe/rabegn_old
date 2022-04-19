import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rabegn/screens/admin_route.dart';
import 'package:rabegn/screens/main_screen.dart';

class AdminValidator extends StatefulWidget {
  const AdminValidator({Key? key}) : super(key: key);

  @override
  _AdminValidatorState createState() => _AdminValidatorState();
}

class _AdminValidatorState extends State<AdminValidator> {
  String role = 'user';

  @override
  void initState() {
    super.initState();
    _checkRole();
  }

  void _checkRole() async {
    User? user = FirebaseAuth.instance.currentUser;
    final DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .get();
    if (!mounted) return;
    setState(
      () {
        role = snap['role'];
      },
    );

    if (role == 'user') {
      navigateNext(const MainScreen());
    } else if (role == 'admin') {
      navigateNext(AdminRoute());
    }
  }

  void navigateNext(Widget route) {
    Timer(
      const Duration(milliseconds: 500),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => route),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
