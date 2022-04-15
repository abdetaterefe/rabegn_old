import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rabegn/screens/forgot_screen.dart';
import 'package:rabegn/screens/login_screen.dart';
import 'package:rabegn/screens/main_screen.dart';
import 'package:rabegn/screens/signup_screen.dart';
import 'package:rabegn/services/auth_services.dart';
import 'package:rabegn/wrapper.dart';

import 'screens/recipe_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Outfit', brightness: Brightness.dark),
        initialRoute: '/',
        routes: {
          '/': (context) => const Wrapper(),
          '/loginscreen': (context) => LogInScreen(),
          '/signupscreen': (context) => SignUpScreen(),
          '/forgotscreen': (context) => const ForgotScreen(),
          '/mainscreen': (context) => const MainScreen(),
          '/recipescreen': (context) => const RecipeScreen(),
        },
      ),
    );
  }
}
