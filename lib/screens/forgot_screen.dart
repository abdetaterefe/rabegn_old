import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../widgets/custombutton.dart';
import '../widgets/customtextfield.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

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
                CustomButton(
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/loginscreen');
                    }
                  },
                  buttonText: "Procced",
                ),
                const Spacer(),
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/loginscreen');
                  },
                  buttonText: "I remembered it",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
