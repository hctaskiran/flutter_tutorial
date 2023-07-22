import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({super.key});

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {

  GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: [
            TextFormField(validator: FormFieldValidator().isNotEmpty),
            TextFormField(validator: FormFieldValidator().isNotEmpty),
            DropdownButtonFormField<String>(
              validator: FormFieldValidator().isNotEmpty,
              items: const [
                DropdownMenuItem(child: Text('Fıs'), value: 'f'),
                DropdownMenuItem(child: Text('Cıs'), value: 'c'),
                DropdownMenuItem(child: Text('kıps'), value: 'k'),
              ], 
              onChanged: (value) {}),
            ElevatedButton(onPressed: () {
              if (_key.currentState?.validate() ?? false) {
                print('done');
              }
            }, child: Text('save'))
          ],
        ),
      ),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : ValidatorMessage._notEmpty;
  }
}

class ValidatorMessage {
  static const String _notEmpty = 'Bos gecilemez';
}