import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSizes iconSize = IconSizes();
  final IconColors iconColors = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hello")),
      body: Column(

        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.message_outlined, color: iconColors.froly, size: IconSizes.iconSmall)),
          const SizedBox(height: 50),
          IconButton(onPressed: () {}, icon: Icon(Icons.message_outlined, color: iconColors.froly, size: IconSizes.iconSmallx2)),
          IconButton(onPressed: () {}, icon: Icon(Icons.message_outlined, color: iconColors.froly, size: IconSizes.iconSmallx2)),
        ],
      ),
    );
  }
}

class IconSizes {
  static double iconSmall = 40;
  static const double iconSmallx2 = 80;

}

class IconColors {
  final Color froly = Color(0xffED617A);

}