import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:metro_bank/my_cards_widget.dart';
import 'custom_widgets/home_page_button.dart';

class MetroHomePage extends StatefulWidget {
  const MetroHomePage({Key? key}) : super(key: key);

  @override
  State<MetroHomePage> createState() => _MetroHomePageState();
}

class _MetroHomePageState extends State<MetroHomePage> {
  void navigateToTheLabel(String label) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const MyCardsWidget()));
  }

  void printTheLabel(String label) {
    if (kDebugMode) {
      print('My cards button is clicked');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const Image(image: AssetImage('images/Ad3x.png')),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: GridView.count(
                mainAxisSpacing: 16,
                crossAxisSpacing: 22,
                crossAxisCount: 2,
                children: [
                  HomePageButton(
                    label: 'My Cards',
                    onPressed: navigateToTheLabel,
                    buttonIcon: Icons.credit_card_outlined,
                  ),
                  HomePageButton(
                    label: 'Pay Bills',
                    onPressed: printTheLabel,
                    buttonIcon: Icons.store,
                  ),
                  HomePageButton(
                    label: 'Top-Up',
                    onPressed: printTheLabel,
                    buttonIcon: Icons.attach_money_outlined,
                  ),
                  HomePageButton(
                    label: 'Transfer',
                    onPressed: printTheLabel,
                    buttonIcon: Icons.wallet_rounded,
                  ),
                  HomePageButton(
                    label: 'Gift Cards',
                    onPressed: printTheLabel,
                    buttonIcon: Icons.card_giftcard_outlined,
                  ),
                  HomePageButton(
                    label: 'Loan Request',
                    onPressed: printTheLabel,
                    buttonIcon: Icons.credit_card,
                  ),
                  HomePageButton(
                    label: 'Credit Card',
                    onPressed: printTheLabel,
                    buttonIcon: Icons.credit_card,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
