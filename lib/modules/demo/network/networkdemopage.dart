import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rainflutter/modules/network/demo/demofuc.dart';

class NetworkDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Coloumn Demo"),
        ),
        body: Container(
          child: BaiduPrinterWdiget(),
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.center,
        ));
  }
}

class BaiduPrinterWdiget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BaiduPrinterState();
  }
}

class _BaiduPrinterState extends State {
  String _testText = "test";

  _refresh() async {
    String data = await getBaidu();
    setState(() {
      _testText = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    _refresh();
    return Text(_testText);
  }

  @override
  void dispose() {
    super.dispose();

  }


}
