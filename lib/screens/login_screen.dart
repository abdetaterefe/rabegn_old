import 'package:flutter/material.dart';

import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';

import '../services/auth_services.dart';
import '../widgets/custombutton.dart';
import '../widgets/customtextfield.dart';

class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passController = TextEditingController();

    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                CustomTextField(
                  hint: 'Email',
                  show: false,
                  action: TextInputAction.next,
                  cust: _emailController,
                  valid: MultiValidator([
                    EmailValidator(errorText: 'enter a valid email address'),
                    RequiredValidator(errorText: 'required'),
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hint: 'Password',
                  show: true,
                  action: TextInputAction.done,
                  cust: _passController,
                  valid: MultiValidator([
                    RequiredValidator(errorText: 'required'),
                    MinLengthValidator(6,
                        errorText: 'password must be gretter than 6'),
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      authService.signInWithEmailAndPassword(
                        _emailController.text,
                        _passController.text,
                      );
                    }
                  },
                  buttonText: "Log In",
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/forgotscreen');
                  },
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                const Spacer(),
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/signupscreen');
                  },
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
