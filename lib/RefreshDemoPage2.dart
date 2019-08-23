import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RefreshDemoPage2 extends StatefulWidget {
  @override
  _RefreshDemoPage2State createState() => _RefreshDemoPage2State();
}

class _RefreshDemoPage2State extends State<RefreshDemoPage2> {
  final int pageSize = 30;

  bool disposed = false;

  List<String> dataList = new List();

  final ScrollController _scrollController = new ScrollController();

  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 2));
    dataList.clear();
    for (int i = 0; i < pageSize; i++) {
      dataList.add("refresh");
    }
    if (disposed) {
      return;
    }
    setState(() {});
  }

  Future<void> loadMore() async {
    await Future.delayed(Duration(seconds: 2));
    for (int i = 0; i < pageSize; i++) {
      dataList.add("loadmore");
    }
    if (disposed) {
      return;
    }
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    new Future.delayed(const Duration(milliseconds: 500), () {
      _scrollController.animateTo(-141,
          duration: Duration(milliseconds: 600), curve: Curves.linear);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    disposed = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("RefreshDemoPage2"),
      ),
      body: Container(
        child: new NotificationListener(
          onNotification: (ScrollNotification notification) {
            if (notification is ScrollEndNotification) {
              if (_scrollController.position.pixels > 0 &&
                  _scrollController.position.pixels ==
                      _scrollController.position.maxScrollExtent) {
                loadMore();
              }
            }
            return false;
          },
          child: CustomScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()
            ),
            slivers: <Widget>[
              CupertinoSliverRefreshControl(
                refreshIndicatorExtent: 100,
                refreshTriggerPullDistance: 140,
                onRefresh: onRefresh,
              ),
              SliverSafeArea(
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context,int index){
                      if (index == dataList.length){
                        return new Container(
                          margin: EdgeInsets.all(10),
                          child: Align(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }
                      return Card(
                        child: new Container(
                          height: 60,
                          alignment: Alignment.centerLeft,
                          child: new Text("Item ${dataList[index]} #index"),
                        ),
                      );
                    },
                    childCount: (dataList.length >= pageSize) 
                    ? dataList.length = 1: dataList.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
