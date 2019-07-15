import 'package:flutter/material.dart';
import 'package:rainflutter/modules/testwidget/coloumn.dart';
import 'package:rainflutter/modules/tutorial/animationdemo.dart';
import 'package:rainflutter/modules/tutorial/tutorialpage.dart';

class TestWidgetPage extends StatefulWidget {
  @override
  TestWidgetPageState createState() {
    return new TestWidgetPageState();
  }
}

class TestWidgetPageState extends State<TestWidgetPage> {
  Map<String, Widget> mainPageMap = {
    "Coloumn": ColoumnPage(),
    "Tutorial": TutorialPage(),
    "Tutorial Animation": TutorialAnimationPage(),
    "Other": ColoumnPage()
  };

  BuildContext mContext;

  @override
  Widget build(BuildContext context) {
    mContext = context;
    var listView = ListView.separated(
      padding: const EdgeInsets.all(16.0),
      itemCount: mainPageMap.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.black,
      ),
      itemBuilder: (context, i) {
        var item = ListTile(
          title: new Container(child: new Text(mainPageMap.keys.toList()[i])),
          onTap: () {
            _onItemTab(mainPageMap.keys.toList()[i]);
          },
        );
        return item;
      },
    );
    return listView;
  }

  _onItemTab(String pageName) {
    Navigator.push(mContext,
        MaterialPageRoute(builder: (context) => mainPageMap[pageName]));
  }
}
