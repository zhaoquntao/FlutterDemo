import 'package:flutter/material.dart';



class DemoItem extends StatelessWidget{

  Widget build(BuildContext context) {
  // Material 是UI呈现的“一张纸”
  return new Container(

    ///卡片包装
    child: new Card(
      ///增加点击效果
        child: new FlatButton(
            onPressed: (){print("点击了哦");},
            child: new Padding(
              padding: new EdgeInsets.only(left: 0.0, top: 10.0, right: 10.0, bottom: 10.0),
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ///文本描述
                  new Container(
                      child: new Text(
                        "这是一点描述",
                        style: TextStyle(
                          color: Colors.black12,
                          fontSize: 14.0,
                        ),
                        ///最长三行，超过 ... 显示
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      margin: new EdgeInsets.only(top: 6.0, bottom: 2.0),
                      alignment: Alignment.topLeft),
                  new Padding(padding: EdgeInsets.all(10.0)),

                  ///三个平均分配的横向图标文字
                  new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _getBottomItem(Icons.star, "1000"),
                      _getBottomItem(Icons.link, "1000"),
                      _getBottomItem(Icons.subject, "1000"),
                    ],
                  ),
                ],
              ),
            ))),
  );
}



  Widget _getBottomItem(IconData icon, String text){

  return new Expanded(
    flex: 1,
    child: new Center(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,

        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Icon(
            icon,
            size: 16.0,
            color: Colors.grey,
          ),
          new Padding(padding: new EdgeInsets.only(left: 5.0)),
          new Text(
            text,
            style: new TextStyle(color: Colors.grey,fontSize: 14.0),
            overflow: TextOverflow.ellipsis,

            maxLines: 1,
          )
        ],
      ),
    ),

  );

}
}







