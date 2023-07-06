import 'package:flutter/material.dart';
import 'package:flutter_tutorial/202/packages/launch_manager.dart';
import 'package:flutter_tutorial/202/packages/loading_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({super.key});

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> with TickerProviderStateMixin, LaunchMixin{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onSecondary,
        onPressed: (){

      }),
      body: Column(
        children: [
          Text("a", style: Theme.of(context).textTheme.subtitle1),
          LoadingBar(),
        ],
      ),
    );
  }
}
