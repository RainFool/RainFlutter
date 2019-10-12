import 'package:flutter/material.dart';

class TanTanList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TanTanListState();
  }
}

class TanTanListState extends State<TanTanList> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[TanTanCard()],
    );
  }
}

class TanTanCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TanTanCardState();
  }
}

class TanTanCardState extends State<TanTanCard> {
  double _top = -1;
  double _left = -1;

  bool isTouched = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: isTouched ? _top : null,
      left: isTouched ? _left : null,
      child: GestureDetector(
        child: Container(
          width: 300,
          height: 200,
          color: Colors.blue,
          child: Text("Container"),
        ),
        onPanDown: (e) => print("用户手指按下位置：${e.globalPosition}"),
        onPanUpdate: (e) => {
          this.setState(() {
            _left += e.delta.dx;
            _top += e.delta.dy;
            isTouched = true;
          })
        },
        onPanEnd: (e) => {print(e.velocity)},
      ),
    );
  }
}
