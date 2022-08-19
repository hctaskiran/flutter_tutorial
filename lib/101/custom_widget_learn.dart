import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget with _ColorsUtility {
  CustomWidgetLearn({super.key});
  final String title = "Food";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomFoodButton(title: title, onPressed: () {},)),
            )),
            const SizedBox(height: 100,),
          CustomFoodButton(title: title, onPressed: () {},),
        ],
      ),
    );
  }
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets mediumPadding = const EdgeInsets.all(16.0);
}

class CustomFoodButton extends StatelessWidget with _ColorsUtility, _PaddingUtility{
  CustomFoodButton({super.key, required this.title, required this.onPressed});
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(primary: _ColorsUtility().redColor,
        shape: const StadiumBorder()),
        onPressed: () {} , 
        child: Padding(
          padding: mediumPadding,
          child: Text(
            title, style: Theme.of(context).textTheme.subtitle2?.copyWith(color: _ColorsUtility().whiteColor, fontWeight: FontWeight.bold)
          ),
        ));
  }
}