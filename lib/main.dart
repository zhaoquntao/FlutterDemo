import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app/Second.dart';
import 'package:flutter_app/ListController.dart';
import 'package:flutter_app/LoginController.dart';
import 'package:flutter_app/FocusNodeController.dart';
import 'package:flutter_app/TabbarController.dart';
import 'package:flutter_app/Animation_Demo1.dart';
import 'package:flutter_app/Animation_Demo2.dart';
import 'package:flutter_app/ClipDemoPage.dart';
import 'package:flutter_app/ScrollListenerDemoPage.dart';
import 'package:flutter_app/ScrollToIndexDemoPage.dart';
import 'package:flutter_app/ScrollToIndexDemoPage2.dart';
import 'package:flutter_app/GridView1.dart';
import 'package:flutter_app/TextLineHeightDemoPage.dart';
import 'package:flutter_app/TransformDemoPage.dart';
import 'package:flutter_app/RefreshDemoPage.dart';
import 'package:flutter_app/RefreshDemoPage2.dart';
import 'package:flutter_app/PositionedDemoPage.dart';
import 'package:flutter_app/FloatingTouchDemoPage.dart';
import 'package:flutter_app/SliverListDemoPage.dart';
import 'package:flutter_app/CustomMultiRenderDemoPage.dart';
import 'package:flutter_app/StickDemoPage.dart';
import 'package:flutter_app/InputBottomDemoPage.dart';







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
  "动画1",
  "动画2-淡入淡出",
  "圆角 例子",
  "滑动监听 例子",
  "滑动到指定位置 例子",
  "滑动到指定位置2 例子",
  "二维网格列表",
  "Transform 例子",
  "文本行间距 例子",
  "简单上下刷新 例子",
  "简单上下刷新2 例子",
  // "简单上下刷新3 例子",
  "绝对定位 例子",
  // "弹出提示框 例子",
  // "Tag 例子",
  // "共享元素 例子",
  // "状态栏颜色 例子",
  // "键盘相关 例子",
  // "动画 例子",
  // "动画2 例子",
  "悬浮触摸控件 例子",
  // "全局字体大小 例子",
  // "富文本 例子",
  // "viewpager 例子",
  // "滑动停靠 例子",
  // "验证码输入框 例子",
  "自定义布局 例子",
  // "自定义布局云词图 例子",
  "列表停靠Stick 例子",
  // "列表停靠Stick2 例子",
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
  },"widget/Animation":(context) {
    return new AnimationContainerDemoPage();
  },"widget/Animation2":(context) {
    return new AnitionDemo2();
  },"widget/clip":(context) {
    return new ClipDemoPage();
  },"widget/scroller":(context) {
    return new ScrollListenerDemoPage();
  },"widget/scrollerto" :(context) {
    return new ScrollToIndexDemoPage();
  },"widget/scrollerto2" :(context) {
    return new ScrollToIndexDemoPage2();
  },"widget/GridView1":(context){
    return new GridView1();
  },"widget/ClipDemoPage":(context){
    return new TransformDemoPage();
  },"widget/TextLineHeightDemoPage":(context){
    return new TextLineHeightDemoPage();
  },"widget/RefreshDemoPage":(context){
    return new RefreshDemoPage();
  },"widget/RefreshDemoPage2":(context){
    return new RefreshDemoPage2();
  },"widget/PositionedDemoPage":(context){
    return new PositionedDemoPage();
  },"widget/SliverListDemoPage":(context){
    return new SliverListDemoPage();
  },"widget/CustomMultiRenderDemoPage":(context){
    return new CustomMultiRenderDemoPage();
  },"widget/StickDemoPage":(context){
    return new StickDemoPage();
  },"widget/InputBottomDemoPage":(context){
    return new InputBottomDemoPage();
  },"widget/StickDemoPage":(context){
    return new StickDemoPage();
  }
  
  
  




};

