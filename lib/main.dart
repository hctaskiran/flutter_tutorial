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
import 'package:flutter_tutorial/101/life_cycle_learn.dart';
import 'package:flutter_tutorial/101/list_tile_learn.dart';
import 'package:flutter_tutorial/101/list_view_builder.dart';
import 'package:flutter_tutorial/101/list_view_learn.dart';
import 'package:flutter_tutorial/101/navigation_learn.dart';
import 'package:flutter_tutorial/101/padding_learn.dart';
import 'package:flutter_tutorial/101/page_view_learn.dart';
import 'package:flutter_tutorial/101/scaffold_learn.dart';
import 'package:flutter_tutorial/101/stack_learn.dart';
import 'package:flutter_tutorial/101/stateful_learn.dart';
import 'package:flutter_tutorial/101/stateless_learn.dart';
import 'package:flutter_tutorial/101/text_field_learn.dart';
import 'package:flutter_tutorial/101/text_view.dart';
import 'package:flutter_tutorial/202/cache/shared_learn_cache.dart';
import 'package:flutter_tutorial/202/cache/shared_list_cache.dart';
import 'package:flutter_tutorial/202/form_learn_view.dart';
import 'package:flutter_tutorial/202/image_learn_202.dart';
import 'package:flutter_tutorial/202/model_learn_view.dart';
import 'package:flutter_tutorial/202/oop_learn_view.dart';
import 'package:flutter_tutorial/202/service/package_learn.dart';
import 'package:flutter_tutorial/202/service/service_learn_view.dart';
import 'package:flutter_tutorial/202/tab_learn.dart';
import 'package:flutter_tutorial/202/theme/alert_learn.dart';
import 'package:flutter_tutorial/202/theme/animated_learn.dart';
import 'package:flutter_tutorial/202/theme/light_theme.dart';
import 'package:flutter_tutorial/202/theme/sheet_learn.dart';
import 'package:flutter_tutorial/202/theme_learn_view.dart';
import 'package:flutter_tutorial/demos/color_demos_view.dart';
import 'package:flutter_tutorial/demos/color_life_cycle_view.dart';
import 'package:flutter_tutorial/demos/login_system_demo.dart';
import 'package:flutter_tutorial/demos/search_bar_demo.dart';
import 'package:flutter_tutorial/demos/my_collections_demo.dart';
import 'package:flutter_tutorial/demos/note_demos_view.dart';
import 'package:flutter_tutorial/demos/stack_demo_view.dart';
import 'package:flutter_tutorial/demos/tut_login_system_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: LightTheme().theme,
      // theme: ThemeData.dark().copyWith(

      //   tabBarTheme: TabBarTheme(
      //     unselectedLabelColor: Colors.green,
      //     labelColor: Colors.pink.shade300,
      //     indicatorColor: Colors.white,
      //     indicatorSize: TabBarIndicatorSize.tab
      //   ),
        

      //   bottomAppBarTheme: BottomAppBarTheme(
      //     shape: CircularNotchedRectangle(),
          
      //   ),

      //   listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
      //   progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
      //   appBarTheme: const AppBarTheme(
      //     centerTitle: true,
      //     backgroundColor: Colors.transparent,
      //     elevation: 0,
      //     systemOverlayStyle: SystemUiOverlayStyle.light,
          
      //   ),
      //   inputDecorationTheme: InputDecorationTheme(
      //     filled: true,
      //     border: OutlineInputBorder(),
      //     labelStyle: TextStyle(color: Colors.white)
      //   )
      // ),
      debugShowCheckedModeBanner: false,
      home: AlertLearn()
    );
  }
}