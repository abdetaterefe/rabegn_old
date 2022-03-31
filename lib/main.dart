import 'package:flutter/material.dart';
import 'package:rabegn/screens/forgot_screen.dart';
import 'package:rabegn/screens/login_screen.dart';
import 'package:rabegn/screens/main_screen.dart';
import 'package:rabegn/screens/signup_screen.dart';

import 'screens/recipe_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/loginscreen',
      routes: {
        '/loginscreen': (context) => const LogInScreen(),
        '/signupscreen': (context) => const SignUpScreen(),
        '/forgotscreen': (context) => const ForgotScreen(),
        '/mainscreen': (context) => const MainScreen(),
        '/recipescreen': (context) => const RecipeScreen(),
      },
    );
  }
}
