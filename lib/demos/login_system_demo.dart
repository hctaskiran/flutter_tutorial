/////////////////////////////////////////////////////////
// Custom Login System that i tried to make it myself //
///////////////////////////////////////////////////////

import 'package:flutter/material.dart';

class CustomLoginSystem extends StatefulWidget {
  const CustomLoginSystem({super.key});

  @override
  State<CustomLoginSystem> createState() => _CustomLoginSystemState();
}

class _CustomLoginSystemState extends State<CustomLoginSystem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/png/login_background.jpeg"),
          fit: BoxFit.cover
          ),         
        ),
        child: Column(
          children: [
            TextField(
              maxLength: 40,
              buildCounter:(context, {int? currentLength, bool? isFocused, maxLength}) {
                return _customAnimatedContainer(currentLength);
              },
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email],
              textInputAction: TextInputAction.next,
              decoration: _MailInputDecorator()._emailInput,
            ),
            TextField(
              decoration: _MailInputDecorator()._passwordInput,
              obscureText: true,
            )
          ],
        ),
      ),
    );
  }
}

AnimatedContainer _customAnimatedContainer (int? currentLength) {
  return AnimatedContainer(
    duration: Duration(seconds: 1),
    key: UniqueKey(),
    height: 10,
    width: 10.0 * (currentLength ?? 0),
  );
}

class _MailInputDecorator {
  final _emailInput = InputDecoration(
              prefixIcon: Icon(Icons.mail), 
              border: OutlineInputBorder(),
              labelText: "Mail",
              hintText: "Enter Your E-Mail"
              
            );

  final _passwordInput = const InputDecoration(
            prefixIcon: Icon(Icons.key),
            labelText: "Password",
            hintText: "Enter Your Password",
            border: OutlineInputBorder());
}