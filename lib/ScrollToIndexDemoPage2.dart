import 'dart:math' as math;

import 'package:flutter/material.dart';

class ScrollToIndexDemoPage2 extends StatefulWidget {
  @override
  _ScrollToIndexDemoPage2State createState() => _ScrollToIndexDemoPage2State();
}

class _ScrollToIndexDemoPage2State extends State<ScrollToIndexDemoPage2> {

  GlobalKey scrollKey = GlobalKey();
  ScrollController controller = new ScrollController();
  List<ItemModel> dataList = List();

  @override
  void initState() {
    dataList.clear();
    for(int i = 0;i< 100;i++){
      dataList.add(new ItemModel(i));
    }
    super.initState();
  }

  _scrollToIndex() {
    var key = dataList[12];
    RenderBox renderBox = key.globalKey.currentContext.findRenderObject();
    ///获取偏移位移 基于 accestor :SingleChildScrollView 的 RenderObject();
    double dy = renderBox.localToGlobal(
      Offset.zero,
      ancestor: scrollKey.currentContext.findRenderObject()).dy;
      /// 计算真实位移
      var offset = dy + controller.offset;

      print("*******$offset");
      controller.animateTo(
        offset,duration:
        Duration(milliseconds:500),curve:Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("ScrollToIndexDemoPage2"),
      ),
      body: new Container(
        child: SingleChildScrollView(
          key: scrollKey,
          controller: controller,
          child: Column(
            children: dataList.map<Widget>((data) {
              return CardItem(data,key: dataList[data.index].globalKey);
            }).toList(),
          ),
        ),
      ),
      persistentFooterButtons: <Widget>[
        new FlatButton(
          onPressed: () async{
            _scrollToIndex();
          },
          child: new Text("Scroll to 12"),
        )
      ],
    );
  }
}

//item
class CardItem extends StatelessWidget{
  final random = math.Random();
  final ItemModel data;
  CardItem(this.data,{key}) :super(key :key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: new Container(
        height: (300 * random.nextDouble()),
        alignment: Alignment.centerLeft,
        child: new Container(
          margin: EdgeInsets.all(5),
          child: new Text("Item ${data.index}"),
        ),
      ),
    );
  }
}

//模型
class ItemModel{
  GlobalKey globalKey = new GlobalKey();
  final int index;

  ItemModel(this.index);
}