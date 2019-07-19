import 'package:flutter/material.dart';
import 'package:flutter_app/DemoItem.dart';



class ListController extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.blue,

      appBar: new AppBar(
        title: new Text("ControllerDemoPage"),
      ),
      body: new ListView.builder(
        itemBuilder: (context,index){
          return new DemoItem();
        },
        itemCount:20,
      ),
    );
  }
}

