import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;
  List _pages = [
    Text('page1'),
    Text('page2'),
    Text('page3'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:_pages[_selectedIndex]),

      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTapped, // tap을 했을

          currentIndex: _selectedIndex, // 최근인덱스를 가져와주는 함수?
          items: <BottomNavigationBarItem>[// 리스트를 넣을떄는 이런식으
        BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('home')),
        BottomNavigationBarItem(icon: Icon(Icons.search),title: Text('search')),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text('account_circle')),
      ]),

    );
  }

  void onItemTapped(int index) {
    setState(() { // 상태를 변경시킬떄쓰는 함수?
      _selectedIndex = index;
      print(index);
    });

  }
}
