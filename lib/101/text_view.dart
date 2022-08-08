import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);
  final String name = "Hako";

  final String? userName;
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome $name",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              
              style: const TextStyle(
                wordSpacing: 2,
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
                color: Colors.purple,
                letterSpacing: 2,
                fontSize: 16, 
                fontWeight: FontWeight.w600)
            ),
            Text(
              "Hello $name ${name.length}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: projectStyles.welcomeStyle,
            ),
            Text(
              "Hello $name ${name.length}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.headline5?.copyWith(color: ProjectColors.welcomeColor),
            ),
            Text(userName ?? " "),
            Text(keys.welcome),
          ],
        )),
    );
  }
}


class projectStyles {
  
  static TextStyle welcomeStyle = TextStyle(
            wordSpacing: 2,
            decoration: TextDecoration.underline,
            fontStyle: FontStyle.italic,
            color: Colors.red,
            letterSpacing: 2,
            fontSize: 16, 
            fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.green;
}

class ProjectKeys {
  final String welcome = "Merhaba";
}