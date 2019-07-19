import 'package:flutter/material.dart';




class TabbarController extends StatefulWidget {
  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<TabbarController> {

  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
  // TODO: implement build
  return Scaffold(
  appBar: AppBar(
  title: Text("Name"),
  actions: <Widget>[
  IconButton(icon: Icon(Icons.share), onPressed: () {
  Scaffold.of(context).openDrawer();
  }),
  ],
  ),

//      drawer: new MyDrawer(),//抽屉
  bottomNavigationBar: BottomNavigationBar(
  items: <BottomNavigationBarItem>[
  BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
  BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
  BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School')),

  ],
  currentIndex: _selectedIndex,
  fixedColor: Colors.blue,
  onTap: _onItemTapped,
  ),
  floatingActionButton: FloatingActionButton(
  child: Icon(Icons.add),
  onPressed: _onAdd,
  ),
  );
  }

  void _onItemTapped(int index){
  setState(() {
  _selectedIndex = index;
  });
  }
  void _onAdd(){
  }


}