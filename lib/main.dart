import 'package:flutter/material.dart';
import 'package:rainflutter/modules/testwidget/listviewdemo.dart';
import 'package:dio/dio.dart';
import 'package:rainflutter/modules/mainpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Flutter Demo"),
          ),
          body: TestWidgetPage(),
        ));
  }
}
