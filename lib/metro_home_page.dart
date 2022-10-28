import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'home_page_button.dart';

class MetroHomePage extends StatelessWidget {
  const MetroHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const Image(image: AssetImage('images/Ad3x.png')),
          GridView.count(
            crossAxisCount: 2,
            children: [
              HomePageButton(
                  label: 'My Cards',
                  onPressed: () {
                    if (kDebugMode) {
                      print('My cards button is clicked');
                    }
                  }),
              HomePageButton(
                  label: 'Pay Bills',
                  onPressed: () {
                    if (kDebugMode) {
                      print('Pay Bills button is clicked');
                    }
                  }),
              HomePageButton(
                  label: 'Top-Up',
                  onPressed: () {
                    if (kDebugMode) {
                      print('Top-Up button is clicked');
                    }
                  }),
            ],
          )
        ],
      ),
    );
  }
}
