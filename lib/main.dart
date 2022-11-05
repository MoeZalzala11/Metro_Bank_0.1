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
      home: const SafeArea(child: Center(child: Base(),)),
    );
  }
}

class Base extends StatelessWidget {
  const Base({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1C1C),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(Icons.menu, color: Color(0xFFD9D9D9),),
        ) ,
        title: const Text('Home',style: TextStyle(color: Color(0xFFD9D9D9)),),
        backgroundColor: Colors.black54,
      ),
      body: const MetroHomePage(),
    );
  }
}
