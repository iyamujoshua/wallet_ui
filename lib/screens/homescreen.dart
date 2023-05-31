import 'package:flutter/material.dart';
import 'package:wallet_ui/components/cards.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
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
                children: [
                  cards(
                    balance: 4950.10,
                    cardNumber: 34498,
                    expiryMonth: 10,
                    expiryYear: 23,
                    color: Colors.deepPurple[300],
                  ),
                  cards(
                    balance: 739.35,
                    cardNumber: 34498,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: Colors.black,
                  ),
                  cards(
                    balance: 2000,
                    cardNumber: 34498,
                    expiryMonth: 10,
                    expiryYear: 25,
                    color: Colors.orange[300],
                  ),
                ],
              ),
            )


            //transaction button

            // column stats + transaction
          ],
        ),
      ),
    );
  }
}
