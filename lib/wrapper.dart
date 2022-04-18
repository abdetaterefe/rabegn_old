import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rabegn/screens/login_screen.dart';
import 'package:rabegn/services/admin_validator.dart';

import 'model/user_model.dart';
import 'services/auth_services.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder(
      stream: authService.user,
      builder: (_, AsyncSnapshot<User?> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User? user = snapshot.data;
          return user == null ? LogInScreen() : const AdminValidator();
        } else {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
