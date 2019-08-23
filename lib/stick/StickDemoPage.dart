import 'package:flutter/material.dart';
import 'package:flutter_app/stick/stickwidget.dart';

class StickDemoPage extends StatefulWidget {
  @override
  _StickDemoPageState createState() => _StickDemoPageState();
}

class _StickDemoPageState extends State<StickDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: new Text("StickDemoPage"),
      ),
      body: Container(
        child: new ListView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          itemCount: 100,
          itemBuilder: (context,index){
            return new Container(
              height: 200,
              color: Colors.deepOrange,
              child: new StickWidget(
                stickHeader: new Container(
                  height: 50,
                  color: Colors.deepPurple,
                  padding: new EdgeInsets.only(left: 10.0),
                  alignment: Alignment.centerLeft,
                  child: new Text(
                    "我的 $index 头啊",
                    style:TextStyle(color: Colors.white),
                  ),
                ),
                stickContent: new Container(
                  margin: EdgeInsets.only(left: 10),
                  color: Colors.grey,
                  height: 150,
                  child: new Center(
                    child: new Text(
                      "我的$index 内容 啊",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}