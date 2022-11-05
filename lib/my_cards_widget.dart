import 'package:flutter/material.dart';

class MyCardsWidget extends StatelessWidget {
  const MyCardsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.redAccent,
        child: const Center(
            child: Text(
          'Cards',
          style: TextStyle(color: Colors.white70),
        )),
      ),
    );
  }
}
