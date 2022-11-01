import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'home_page_button.dart';

class MetroHomePage extends StatefulWidget {
    const MetroHomePage({Key? key}) : super(key: key);

  @override
  State<MetroHomePage> createState() => _MetroHomePageState();
}

class _MetroHomePageState extends State<MetroHomePage> {

  void printTheLabel(String label) {
    print('My cards button is clicked');
  }
    @override
    Widget build(BuildContext context) {
      return SizedBox(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: Column(
          children: [
            const Image(image: AssetImage('images/Ad3x.png')),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    HomePageButton(label: 'My Cards', onPressed: printTheLabel),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }
}
