import 'package:flutter/material.dart';

class NavigationDetailLearn extends StatefulWidget {
  const NavigationDetailLearn({super.key});

  @override
  State<NavigationDetailLearn> createState() => _NavigationDetailLearnState();
}

class _NavigationDetailLearnState extends State<NavigationDetailLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(onPressed:() {
          Navigator.of(context).pop(true);
        }, icon: const Icon(Icons.check), label: const Text("Onayla")),
      ),
    );
  }
}