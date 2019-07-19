import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app/Second.dart';
import 'package:flutter_app/ListController.dart';
import 'package:flutter_app/LoginController.dart';
import 'package:flutter_app/FocusNodeController.dart';
import 'package:flutter_app/TabbarController.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GSY Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo'),
      routes: routers,
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var routeLists = routers.keys.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
        child: new ListView.builder(
          itemBuilder: (context, index) {
            return new InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(routeLists[index]);
              },
              child: new Card(
                child: new Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  child: new Text(routerName[index]),
                ),
              ),
            );
          },
          itemCount: routers.length,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}


const routerName = [
  "Controller List 例子",
  "登录",
  "焦点",
  "tab",
  "圆角 例子",
  "滑动监听 例子",
  "滑动到指定位置 例子",
  "滑动到指定位置2 例子",
  "Transform 例子",
  "文本行间距 例子",
  "简单上下刷新 例子",
  "简单上下刷新2 例子",
  "简单上下刷新3 例子",
  "绝对定位 例子",
  "弹出提示框 例子",
  "Tag 例子",
  "共享元素 例子",
  "状态栏颜色 例子",
  "键盘相关 例子",
  "动画 例子",
  "动画2 例子",
  "悬浮触摸控件 例子",
  "全局字体大小 例子",
  "富文本 例子",
  "viewpager 例子",
  "滑动停靠 例子",
  "验证码输入框 例子",
  "自定义布局 例子",
  "自定义布局云词图 例子",
  "列表停靠Stick 例子",
  "列表停靠Stick2 例子",
  "键盘顶起 例子",
  "Blur 例子",
  "动画3 例子",
];


Map<String, WidgetBuilder> routers = {
  "widget/controller": (context) {
    return new ListController();
  },"widget/Login": (context) {
    return new LoginController();
  },"widget/FocusNode": (context) {
    return new ScaffoldRoute();
  },"widget/tab": (context) {
    return new TabbarController();
  }




};

