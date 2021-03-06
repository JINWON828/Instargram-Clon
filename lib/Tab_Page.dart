import 'package:flutter/material.dart';
import 'package:flutter_instagram_app/Account_Page.dart';
import 'package:flutter_instagram_app/Home_Page.dart';
import 'package:flutter_instagram_app/Search_Page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class TabPage extends StatefulWidget {
  final FirebaseUser user;

  TabPage(this.user);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;

  List _pages = [
    HomePage(),
    SearchPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:_pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,selectedItemColor: Colors.red,
        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home,),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.search,),label: "search"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle,),label: "account")
      ],),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
