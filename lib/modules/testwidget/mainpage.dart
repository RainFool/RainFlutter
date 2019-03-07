import 'package:flutter/material.dart';
import 'package:rainflutter/modules/main/coloumn.dart';

class TestWidgetPage extends StatefulWidget {
  @override
  TestWidgetPageState createState() {
    return new TestWidgetPageState();
  }
}

class TestWidgetPageState extends State<TestWidgetPage> {
  List<String> mainPageData = ["Coloumn", "Other"];

  BuildContext mContext;

  @override
  Widget build(BuildContext context) {
    mContext = context;
    var listView = ListView.separated(
      padding: const EdgeInsets.all(16.0),
      itemCount: mainPageData.length,
      separatorBuilder: (context, index) => Divider(
            color: Colors.black,
          ),
      itemBuilder: (context, i) {
        var item = ListTile(
          title: new Container(child: new Text(mainPageData[i])),
          // onTap: _onItemTab(i),
          onTap: () {
            _onItemTab(i);
          },
        );
        return item;
      },
    );
    return listView;
  }

  _onItemTab(int i) {
    if (mainPageData[i] == "Coloumn") {
      Navigator.push(
        mContext,
        MaterialPageRoute(builder: (context) => ColoumnPage()),
      );
    }
  }
}