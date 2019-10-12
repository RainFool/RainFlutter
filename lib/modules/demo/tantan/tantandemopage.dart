import 'package:flutter/material.dart';
import 'package:rainflutter/modules/demo/tantan/tantanwidget.dart';

class TanTanDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TanTan Demo"),
      ),
      body: Center(
        child: TanTanList(),
      ),
    );
  }
}
