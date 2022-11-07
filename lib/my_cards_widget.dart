import 'package:flutter/material.dart';

class MyCardsWidget extends StatelessWidget {
  const MyCardsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1C1C),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.menu,
            color: Color(0xFFD9D9D9),
          ),
        ),
        title: const Text(
          'My Cards',
          style: TextStyle(color: Color(0xFFD9D9D9)),
        ),
        backgroundColor: Colors.black54,
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color(0xFF1C1C1C),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 118,
                padding: const EdgeInsets.all(26),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF343434),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Color(0xFFDFDFDF)),
                          borderRadius: BorderRadius.circular(20)),
                  ),
                  child: const Text('Create virtual card',style: TextStyle(
                    color: Color(0xFFDFDFDF),
                    fontSize: 24,
                    fontWeight: FontWeight.normal
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
