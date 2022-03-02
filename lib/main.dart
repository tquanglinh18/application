import 'package:application/home_page.dart';

import 'package:application/noti_page.dart';
import 'package:application/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  List<Widget> page = [
    const HomePage(), const NotiPage() ,ProfilePage(),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: page[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.red, // set color cho item chonj
          type: BottomNavigationBarType.fixed, // hien thi cac itom khong chon
          iconSize: 30, // kich thuoc icon cua item
          selectedFontSize: 15, // kich thuoc cua label dang chon
          unselectedFontSize: 12, // kich thuoc cua label khong chon
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
              backgroundColor: Colors.blue,
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.shopping_bag),
            //   label: 'Shop',
            //   backgroundColor: Colors.blue,
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.blue,
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
