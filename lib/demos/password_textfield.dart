import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key, required this.controller});
  final TextEditingController? controller; 
  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final _obscureText = "½";
  bool _isSecure = true;

  void _changeLoading() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _isSecure,
      obscuringCharacter: _obscureText,
      autofillHints: [AutofillHints.password],
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        hintText: "Password Here",
        suffix: _onVisibilityIcon()
      ),
    );
  }

  IconButton _onVisibilityIcon() {
    return IconButton(
      onPressed: (){
        _changeLoading();    
      },
        icon: AnimatedCrossFade(
          firstChild: Icon(Icons.visibility_outlined), 
          secondChild: Icon(Icons.visibility_off_outlined), 
          crossFadeState: _isSecure ? CrossFadeState.showFirst : CrossFadeState.showSecond, duration: Duration(seconds: 2)));
      // icon: Icon(_isSecure ? Icons.visibility : Icons.visibility_off));
  }
}