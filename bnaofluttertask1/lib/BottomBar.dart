import 'package:bnaofluttertask1/Chat.dart';
import 'package:bnaofluttertask1/Learn.dart';
import 'package:bnaofluttertask1/Profile.dart';
import 'package:flutter/material.dart';

import 'Dashboard/HomeScreen.dart';
import 'Hub.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({Key? key}) : super(key: key);

  @override
  State<BottomBarView> createState() => _BottomBarView();
}

class _BottomBarView extends State<BottomBarView> {
  int screenIndex = 0;
  List TabScreenList = [
    const Home(),
    const Learn(),
    const Hub(),
    const Chat(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (indexNumber) {
          setState(() {
            screenIndex = indexNumber;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: screenIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Hub',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: TabScreenList[screenIndex],
    );
  }
}
