import 'package:bottom_navigation_bar/add.dart';
import 'package:bottom_navigation_bar/profile.dart';
import 'package:bottom_navigation_bar/search.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List pages = [Home(),Search(),Add(),Profile()];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body:pages[selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedItem,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          selectedItem = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'Profile')
        ],
      ),
    );
  }
}
