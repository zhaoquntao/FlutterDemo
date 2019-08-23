import 'package:flutter/material.dart';


class ScrollListenerDemoPage extends StatefulWidget {
  @override
  _ScrollListenerDemoPageState createState() => _ScrollListenerDemoPageState();
}

class _ScrollListenerDemoPageState extends State<ScrollListenerDemoPage> {

  final ScrollController _scrollController = new ScrollController();

  bool isEnd = false;
  
  bool showToTopBtn = false; //是否显示“返回到顶部”按钮


  double offset = 0;
  String notify = "";

  @override
  void initState(){
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        offset = _scrollController.offset;
        isEnd = _scrollController.position.pixels == _scrollController.position.maxScrollExtent;

      });

    if (_scrollController.offset < 1000 && showToTopBtn) {
      setState(() {
        showToTopBtn = false;
      });
    } else if (_scrollController.offset >= 1000 && showToTopBtn == false) {
      setState(() {
        showToTopBtn = true;
      });
    }
    });
  }

  @override
  void dispose() {
    //为了避免内存泄露，需要调用_controller.dispose
    _scrollController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("ScrollListenerDemoPage"),
      ),
      body: new Container(
        child: NotificationListener(
          // ignore: missing_return
          onNotification: (notification) {
            String notify = "";
            if (notification is ScrollEndNotification) {
              notify = "ScrollEnd";
            } else if (notification is ScrollStartNotification) {
              notify = "ScrollStart";
            } else if (notification is UserScrollNotification) {
              notify = " UserScroll";
            } else if (notification is ScrollUpdateNotification) {
              notify = "ScrollUpdate";
            }
            setState(() {
              this.notify = notify;
            });
          },
          child: new ListView.builder(
            controller: _scrollController,
              itemBuilder: (context, index){
              return Card(
                child: new Container(
                  height: 60,
                  alignment: Alignment.centerLeft,
                  child: new Text("Item $index"),
                ),
              );
              },
              
            itemCount: 100,
            
          ),
          
        ),
      ),
      floatingActionButton: !showToTopBtn ? null : FloatingActionButton(
          child: Icon(Icons.arrow_upward),
          onPressed: () {
            //返回到顶部时执行动画
            _scrollController.animateTo(.0,
                duration: Duration(milliseconds: 200),
                curve: Curves.ease
            );
          }
      ),
    );
  }
}
