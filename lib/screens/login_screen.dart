import 'package:flutter/material.dart';

import '../widgets/custombutton.dart';
import '../widgets/customtextfield.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                CustomTextField(
                  hint: 'Email',
                  show: false,
                  action: TextInputAction.next,
                  cust: _emailController,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hint: 'Password',
                  show: true,
                  action: TextInputAction.done,
                  cust: _passController,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  onTap: () {},
                  buttonText: "Log In",
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                const Spacer(),
                CustomButton(
                  onTap: () {},
                  buttonText: "Create an account",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
