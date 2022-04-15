import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';
import 'package:rabegn/services/auth_services.dart';

import '../widgets/custombutton.dart';
import '../widgets/customtextfield.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passController = TextEditingController();
    final authSercice = Provider.of<AuthService>(context);
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
                  onTap: () async {
                    if (_formkey.currentState!.validate()) {
                      await authSercice.signUpWithEmailAndPassword(
                        "user",
                        _nameController.text,
                        _emailController.text,
                        _passController.text,
                      );
                      Navigator.pop(context);
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
