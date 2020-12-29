import 'package:apputem/submenu.dart';
import 'package:flutter/material.dart';
import 'package:apputem/home.dart';
import 'package:apputem/members.dart';
import 'package:apputem/graphics.dart';
import 'package:apputem/submenu.dart';
import 'package:apputem/list_country.dart';

//import 'members.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home(),
      //theme: new ThemeData.fallback(),
      routes: <String, WidgetBuilder>{
        //Members.routeName: (BuildContext context) => Members(),
        //Graphics.routeName: (BuildContext context) => Graphics(),
        Members.routeName: (BuildContext context) => Members(),
        SubMenu.routeName: (BuildContext context) => SubMenu(),
        ListCountry.routeName: (BuildContext context) => ListCountry(),
        Graphics.routeName: (BuildContext context) => Graphics()
      }));
}
