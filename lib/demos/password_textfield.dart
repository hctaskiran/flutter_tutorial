import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key});

  final _obscureText = "½";

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      obscuringCharacter: _obscureText,
      autofillHints: [AutofillHints.password],
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        hintText: "Password Here",
        suffixIcon: Text(" ")
      ),
    );
  }
}