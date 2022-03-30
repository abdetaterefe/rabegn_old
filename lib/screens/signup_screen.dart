import 'package:flutter/material.dart';

import '../widgets/custombutton.dart';
import '../widgets/customtextfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();

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
                  hint: 'Name',
                  show: false,
                  action: TextInputAction.next,
                  cust: _nameController,
                ),
                const SizedBox(
                  height: 10,
                ),
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
                  buttonText: "Sign Up",
                ),
                const Spacer(),
                CustomButton(
                  onTap: () {},
                  buttonText: "I have an account",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
