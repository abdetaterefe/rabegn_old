import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rabegn/provider/recipe_provider.dart';
import 'package:rabegn/screens/admin_profile.dart';
import 'package:rabegn/screens/forgot_screen.dart';
import 'package:rabegn/screens/login_screen.dart';
import 'package:rabegn/screens/main_screen.dart';
import 'package:rabegn/screens/signup_screen.dart';
import 'package:rabegn/services/auth_services.dart';
import 'package:rabegn/wrapper.dart';

import 'contants/app_themes.dart';
import 'provider/theme_provider.dart';
import 'screens/recipe_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(),
        ),
        ChangeNotifierProvider(
          create: (context) => RecipeProvider(),
        ),
        ChangeNotifierProvider<ThemeProvider>(
          create: (context) => ThemeProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (_, themeProvider, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          themeMode:
              themeProvider.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          initialRoute: '/',
          routes: {
            '/': (context) => const Wrapper(),
            '/loginscreen': (context) => LogInScreen(),
            '/signupscreen': (context) => SignUpScreen(),
            '/forgotscreen': (context) => const ForgotScreen(),
            '/mainscreen': (context) => const MainScreen(),
            '/recipescreen': (context) => const RecipeScreen(),
            '/adminprofilescreen': (context) => const AdminProfileScreen(),
          },
        );
      },
    );
  }
}
