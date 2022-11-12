import 'package:flutter/material.dart';

class CustomerSupportPage extends StatelessWidget {
  const CustomerSupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color(0xff1C1C1C),
        alignment: Alignment.center,
        child: const Text('Customer Support',style: TextStyle(color: Colors.white70),),
      ),
    );
  }
}
