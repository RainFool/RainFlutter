import 'package:flutter/material.dart';

class GestureDetectorDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gesture Detector"),
        ),
        body: Stack(
          children: <Widget>[
            Container(color: Colors.greenAccent),
            GestureDetectTestWidget(),
            Positioned(
              left: 100,
              top: 200,
              child: _Drag(),
            )
          ],
        ));
  }
}

class GestureDetectTestWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GestureDetectTestState();
  }
}

class GestureDetectTestState extends State<GestureDetectTestWidget> {
  String _operation = "No Gesture detected!"; //保存事件名
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        color: Colors.blue,
        width: 200,
        height: 100,
        child: Text(
          _operation,
          style: TextStyle(color: Colors.white),
        ),
      ),
      onTap: () => updateText("Tap"),
      onDoubleTap: () => updateText("Double Tap"),
      onLongPress: () => updateText("LongPress"), //长按
    );
  }

  void updateText(String text) {
    //更新显示的事件名
    setState(() {
      _operation = text;
    });
  }
}

class _Drag extends StatefulWidget {
  @override
  State createState() {
    return _DragState();
  }
}

class _DragState extends State<_Drag> {
  double _top = 0;
  double _left = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            child: CircleAvatar(
              child: Text("A"),
            ),
            onPanDown: (e) => print("用户手指按下位置：${e.globalPosition}"),
            onPanUpdate: (e) =>
            {
              this.setState(() {
                _left += e.delta.dx;
                _top += e.delta.dy;
              })
            },
            onPanEnd: (e) => {print(e.velocity)},
          );
  }
}
