import 'package:flutter/material.dart';

class HomePageButton extends StatelessWidget {
  const HomePageButton({Key? key, required this.label, required this.onPressed})
      : super(key: key);

  final String label;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed(label),
        child: Column(
          children: [
            //const Image(image: AssetImage(''),),
            Text(label),
          ],
        ));
  }
}
