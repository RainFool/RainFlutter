import 'package:flutter/material.dart';

class ColoumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Coloumn Demo"),
        ),
        body: Container(
          constraints: new BoxConstraints.expand(
            height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
          ),
          decoration: BoxDecoration(
            border: Border.all(width: 2.0, color: Colors.red),
            color: Colors.grey,
            image: DecorationImage(
                image: NetworkImage(
                    "http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=0d023672312ac65c67506e77cec29e27/9f2f070828381f30dea167bbad014c086e06f06c.jpg")),
          ),
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.center,
          transform: new Matrix4.rotationZ(0.3),
        ));
  }
}
