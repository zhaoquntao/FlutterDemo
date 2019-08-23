import 'package:flutter/material.dart';

class TransformDemoPage extends StatelessWidget{
  
  getHeadr(context){
    return Transform.translate(
      offset: Offset(0, -30),
      child: new Container(
        width: 72.0,
        height: 72.0,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Theme.of(context).cardColor,blurRadius: 4.0)
          ],
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "static/gsy_cat.png",
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      appBar: AppBar(
        title: new Text("TransformDemoPage"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: new Card(
          margin: EdgeInsets.all(10),
          child: Container(
            height: 150,
            padding: EdgeInsets.all(10),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                getHeadr(context),
                new Text(
                  "Flutter is Google's portable UI toolkit for crafting "
                  "beautiful, natively compiled applications for mobile, "
                  "web, and desktop from a single codebase. ",
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  maxLines: 3,
                  style: TextStyle(),
                )  
              ],

            ),
          ),
        ),
      ),
    );
  }

}
