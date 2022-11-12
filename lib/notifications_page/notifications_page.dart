import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color(0xff1C1C1C),
        alignment: Alignment.center,
        child: const Text('Notifications',style: TextStyle(color: Colors.white70),),
      ),
    );
  }
}
