import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const TitleTextWidget(title: "alofıs",),
          _emptyBox(),
          const TitleTextWidget(title: "alocıs",),
          _emptyBox(),
          const TitleTextWidget(title: "canfıs",),
          _emptyBox(),
          const TitleTextWidget(title: "cancıs"),
          _emptyBox(),
          const _CustomContainer(),
          _emptyBox(),
        ],
      ),
    );
  }

  SizedBox _emptyBox() => SizedBox(height: 10,);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Colors.red
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
     style: TextStyle(fontSize:24)
    );
  }
}