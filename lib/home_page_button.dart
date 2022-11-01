import 'package:flutter/material.dart';

class HomePageButton extends StatelessWidget {
  const HomePageButton({Key? key, required this.label, required this.onPressed, required this.buttonIcon})
      : super(key: key);

  final String label;
  final Function onPressed;
  final IconData buttonIcon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => onPressed(label),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: const Color(0xFF2E2E2E),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(buttonIcon,size: 64,),
            const SizedBox(height: 18,),
            Text(
              label,
              style: const TextStyle(color: Color(0xFFF1F1F1)),
            ),
          ],
        ));
  }
}
