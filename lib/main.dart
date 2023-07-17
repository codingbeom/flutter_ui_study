import 'package:flutter_ui_study/widgets/button.dart';
import 'package:flutter_ui_study/widgets/card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Hey What's up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 14,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 40),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: 'Transfer',
                      bgColor: Color(0xFFF2B33A),
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const MyCard(
                  title: 'Euro',
                  amount: '1,234',
                  city: 'EUR',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                  dy: 0,
                ),
                const MyCard(
                  title: 'Bitcoin',
                  amount: '5,678',
                  city: 'BTC',
                  icon: Icons.currency_bitcoin_rounded,
                  isInverted: true,
                  dy: -20,
                ),
                const MyCard(
                    title: 'Dollar',
                    amount: '1,589',
                    city: 'USD',
                    icon: Icons.attach_money_rounded,
                    isInverted: false,
                    dy: -40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
