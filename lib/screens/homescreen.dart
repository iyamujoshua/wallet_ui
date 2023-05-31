import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_ui/components/cards.dart';
import 'package:wallet_ui/components/my_buttons.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " Cards",
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                  //plus buttion

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                        onPressed: () {
                          print("You tapped! me");
                        },
                        icon: Icon(Icons.add)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            // cards
            Container(
              // color: Colors.red,
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  cards(
                    balance: 4510,
                    cardNumber: 3798,
                    expiryMonth: 09,
                    expiryYear: 23,
                    color: Colors.deepPurple[300],
                  ),
                  cards(
                    balance: 739.35,
                    cardNumber: 6875,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: Colors.black,
                  ),
                  cards(
                    balance: 2000,
                    cardNumber: 4194,
                    expiryMonth: 12,
                    expiryYear: 24,
                    color: Colors.orange[300],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
            ),
            SizedBox(
              height: 25,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // send button
                  mybuttons(
                      buttonText: "Send",
                      iconImagePath: "asset/send-money.png"),

                  //pay button
                  mybuttons(
                      buttonText: "pay",
                      iconImagePath: "asset/credit-card.png"),

                  // bill button
                  mybuttons(
                      buttonText: "Bill",
                      iconImagePath: "asset/transaction.png"),
                ],
              ),
            ),

            //transaction button

            // column stats + transaction

            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  ListTile(
                    // leading: IconButton(icon: Image.asset('asset/'), onPressed: () {},),
                    title: Text(
                      "Recent transaction",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    trailing: Image.asset(
                      "asset/check.png",
                    ),
                    onTap: () {
                      // Navigator.pushNamed(context, '/Notifications');
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    // leading: IconButton(icon: Image.asset('asset/'), onPressed: () {},),
                    title: Text(
                      "Recent transaction",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    trailing: Image.asset(
                      "asset/greater-than.png",
                    ),
                    onTap: () {
                      // Navigator.pushNamed(context, '/Notifications');
                    },
                  ),
                                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    // leading: IconButton(icon: Image.asset('asset/'), onPressed: () {},),
                    title: Text(
                      "Recent transaction",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    trailing: Image.asset(
                      "asset/cross.png",
                    ),
                    onTap: () {
                      // Navigator.pushNamed(context, '/Notifications');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
