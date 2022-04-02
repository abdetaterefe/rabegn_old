import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../widgets/custombutton.dart';
import '../widgets/customtextfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formkey = GlobalKey<FormState>();
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
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                CustomTextField(
                  hint: 'Name',
                  show: false,
                  action: TextInputAction.next,
                  cust: _nameController,
                  valid: MultiValidator([
                    RequiredValidator(errorText: 'required'),
                    MinLengthValidator(4,
                        errorText: 'name must be gretter than 6'),
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),
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
                        errorText: 'password must be gretter than 4'),
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/loginscreen');
                    }
                  },
                  buttonText: "Sign Up",
                ),
                const Spacer(),
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/loginscreen');
                  },
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
