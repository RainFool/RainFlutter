import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("Custom sliver demo"),
            floating: true,
            flexibleSpace: Image.network(
              "https://b-ssl.duitang.com/uploads/item/201808/27/20180827043223_twunu.jpg",
              fit: BoxFit.cover,
            ),
            expandedHeight: 300,
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(title: Text("Item $index")),
                childCount: 500),
          )
        ],
      ),
    );
  }
}
