import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final String _title = 'Welcome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text(_title),
        leading: Icon(Icons.chevron_left),
        toolbarTextStyle: const TextStyle(color: Colors.red),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed:() {}, icon: Icon(Icons.menu)),
          const Center(child: const CircularProgressIndicator())
          ],
      ),
    );
  }
}