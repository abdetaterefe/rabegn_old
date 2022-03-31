import 'package:flutter/material.dart';

import '../widgets/custombutton.dart';
import '../widgets/customtextfield.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  final TextEditingController _emailController = TextEditingController();

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
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/loginscreen');
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
