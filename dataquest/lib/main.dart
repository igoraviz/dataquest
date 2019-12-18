
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'splash.dart';
import 'home.dart';
void main() {
  runApp(new MaterialApp(
    home: new splash(),
    routes: <String, WidgetBuilder>{
      '/home': (BuildContext context) => new home(),
    },
  ));
}
