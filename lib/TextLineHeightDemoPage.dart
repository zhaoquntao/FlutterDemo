import 'package:flutter/material.dart';


class TextLineHeightDemoPage extends StatefulWidget {
  @override
  _TextLineHeightDemoPageState createState() => _TextLineHeightDemoPageState();
}

class _TextLineHeightDemoPageState extends State<TextLineHeightDemoPage> {


  final double leading = 0.9;

  final double fontSize = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("TextLineHeightDemoPage"),

      ),
      body: Container(
        color: Colors.blueGrey,
        margin: EdgeInsets.all(10),
        child: Transform.translate(
          offset: Offset(0, - fontSize * leading /2),
          child: new Text(
            textContent,
            strutStyle: StrutStyle(forceStrutHeight: true,height: 1,leading: leading),
            style: TextStyle(
              fontSize: fontSize,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}


const textContent =
    "Today I was amazed to see the usually positive and friendly VueJS community descend into a bitter war. Two weeks ago Vue creator Evan You released a Request for Comment (RFC) for a new function-based way of writing Vue components in the upcoming Vue 3.0. Today a critical "
    "Reddit thread followed by similarly "
    "critical comments in a Hacker News thread caused a "
    "flood of developers to flock to the original RFC to "
    "voice their outrage, some of which were borderline abusive. "
    "It was claimed in various places that";
