import 'package:flutter/material.dart';
import 'package:metro_bank/customer_support_page/customer_support_page.dart';
import 'package:metro_bank/news_page/news_page.dart';
import 'package:metro_bank/notifications_page/notifications_page.dart';
import 'home_page/metro_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const SafeArea(
          child: Center(
        child: Base(),
      )),
    );
  }
}

class Base extends StatefulWidget {
  const Base({Key? key}) : super(key: key);

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  int currentIndex = 0;
  final pages = [
    const MetroHomePage(),
    const NewsPage(),
    const NotificationsPage(),
    const CustomerSupportPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1C1C),
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color(0xff1C1C1C)),
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper_outlined),
              activeIcon: Icon(Icons.newspaper),
              label: 'News',
              backgroundColor: Color(0xff1C1C1C)),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              activeIcon: Icon(Icons.notifications),
              label: 'Notifications',
              backgroundColor: Color(0xff1C1C1C)),
          BottomNavigationBarItem(
              icon: Icon(Icons.headphones_outlined),
              activeIcon: Icon(Icons.headphones),
              label: 'Help Center',
              backgroundColor: Color(0xff1C1C1C)),
        ],
      ),
    );
  }
}
