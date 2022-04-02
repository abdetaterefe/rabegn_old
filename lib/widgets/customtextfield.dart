import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final TextInputAction? action;
  final bool show;
  final TextEditingController cust;
  final String? Function(String?)? valid;
  const CustomTextField({
    Key? key,
    required this.hint,
    this.action,
    required this.show,
    required this.cust,
    this.valid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: cust,
      textInputAction: action,
      obscureText: show,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hint,
      ),
      validator: valid,
    );
  }
}
