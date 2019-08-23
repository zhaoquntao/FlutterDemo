import 'package:flutter/material.dart';
import 'package:flutter_app/stick/stickrender.dart';

class StickWidget extends MultiChildRenderObjectWidget{
  ///顺序添加 stickHeader 和 stickContent
  ///
  StickWidget({
    @required stickHeader,
    @required stickContent,
  }) : super (
    children:[stickContent,stickHeader],
  );

@override 
StickRender createRenderObject(BuildContext context){
  ///传入 ScrollableState
  return new StickRender(scrollable: Scrollable.of(context));
}

@override
  void updateRenderObject(BuildContext context, StickRender renderObject) {
    renderObject..scrollable = Scrollable.of(context);
  }

}