import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const Base(),
    );
  }
}

class Base extends StatelessWidget {
  const Base({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xff1C1C1C),
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Home'),
        backgroundColor: Colors.black54,
      ),
      body: const SafeArea(child: Center(
        child: MetroHomePage(),
      )),
    );
  }
}
