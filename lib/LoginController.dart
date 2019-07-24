
import 'package:flutter/material.dart';


class LoginController extends StatelessWidget {

  final TextEditingController controller = new TextEditingController(text:"init Text");


  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: new Text("输入框"),
        ),
        body: new Container(
          margin: EdgeInsets.all(10),
          child: new Center(
            child: new TextField(
              controller: controller,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("cuttent Text ${controller.text}");
              controller.text = "Changed By FloatingctionButton";
            },
          child: new Text("C"),
        ),
      );

  }
}

