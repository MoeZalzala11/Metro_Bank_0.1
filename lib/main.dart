import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'metro_home_page.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1C1C),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.menu,
            color: Color(0xFFD9D9D9),
          ),
        ),
        title: const Text(
          'Home',
          style: TextStyle(color: Color(0xFFD9D9D9)),
        ),
        backgroundColor: Colors.black54,
      ),
      body: const MetroHomePage(),
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
              backgroundColor: Colors.redAccent),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper_outlined),
            activeIcon: Icon(Icons.newspaper),
            label: 'News',
            backgroundColor: Colors.blue
          )
        ],
      ),
    );
  }
}
