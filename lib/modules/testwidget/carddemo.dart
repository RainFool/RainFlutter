import 'package:flutter/material.dart';

class CardDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Demo"),
      ),
      body: Container(
        child: CardLayoutWidget(),
      ),
    );
  }
}

class CardLayoutWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CardDemoState();
}

class CardDemoState extends State<CardLayoutWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(

      separatorBuilder: (context, index) {
        return index % 2 == 0
            ? Divider(color: Colors.green)
            : Divider(color: Colors.red);
      },
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('The ${index} Text'),
        );
      },
      itemCount: 5000,
    );
  }
}
