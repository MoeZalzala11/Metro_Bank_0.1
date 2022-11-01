import 'package:flutter/material.dart';

class HomePageButton extends StatelessWidget {
  const HomePageButton({Key? key, required this.label, required this.onPressed})
      : super(key: key);

  final String label;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => onPressed(label),
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //const Image(image: AssetImage(''),),
              Text(
                label,
                style: const TextStyle(color: Color(0xFFF1F1F1)),
              ),
            ],
          ),
        ));
  }
}
