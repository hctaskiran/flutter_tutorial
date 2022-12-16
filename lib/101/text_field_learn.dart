import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();

  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 20,
            buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}) {
              return _animatedContainer(currentLength);
            }, 
            keyboardType: TextInputType.emailAddress,
            autofillHints: const [AutofillHints.email],
            focusNode: focusNodeTextFieldOne,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.mail), 
              border: OutlineInputBorder(),
              labelText: "Mail",          
            ),
          ),
          TextField(focusNode: focusNodeTextFieldTwo,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.key),
            labelText: "Password",
            border: OutlineInputBorder()
          )
          ),
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
          key: UniqueKey(),
          color: Colors.green, 
          height: 10,
          width: 10.0 * (currentLength ?? 0),
          duration: Duration(seconds: 1),
        );
  }
}