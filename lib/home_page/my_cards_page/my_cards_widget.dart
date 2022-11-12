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
                  child: const Text(
                    'Create virtual card',
                    style: TextStyle(
                        color: Color(0xFFDFDFDF),
                        fontSize: 24,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  itemExtent: 120,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0XFF343434),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Card User Name',
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFFDFDFDF)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Card Number',
                                style: TextStyle(
                                    fontSize: 14, color: const Color(0xFFDFDFDF).withOpacity(0.8)),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0XFFDFDFDF),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Card Date',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: const Color(0XFFDFDFDF)
                                        .withOpacity(0.5)),
                              ),
                              Text('Balance',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: const Color(0XFFDFDFDF)
                                          .withOpacity(0.5))),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
