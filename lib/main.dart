import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tutorial/101/app_bar_learn.dart';
import 'package:flutter_tutorial/101/button_learn.dart';
import 'package:flutter_tutorial/101/card_learn.dart';
import 'package:flutter_tutorial/101/color_learn.dart';
import 'package:flutter_tutorial/101/column_row_learn.dart';
import 'package:flutter_tutorial/101/container_sized_box.dart';
import 'package:flutter_tutorial/101/custom_widget_learn.dart';
import 'package:flutter_tutorial/101/icon_learn.dart';
import 'package:flutter_tutorial/101/image_learn.dart';
import 'package:flutter_tutorial/101/indicator_learn.dart';
import 'package:flutter_tutorial/101/list_tile_learn.dart';
import 'package:flutter_tutorial/101/padding_learn.dart';
import 'package:flutter_tutorial/101/scaffold_learn.dart';
import 'package:flutter_tutorial/101/stateless_learn.dart';
import 'package:flutter_tutorial/101/text_view.dart';
import 'package:flutter_tutorial/demos/note_demos_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
        progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        )
      ),
      debugShowCheckedModeBanner: false,
      home: ColumnRowLearn(),
    );
  }
}