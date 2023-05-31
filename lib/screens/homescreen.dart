import 'package:flutter/material.dart';

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
              decoration: BoxDecoration(color: Colors.deepPurple[300],
              borderRadius: BorderRadius.circular(25)),
              width: 350,
              // height: 250,
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  Text("Balance", style: TextStyle(
                    color: Colors.white,
                  ),),
                  Text("\$5,000.87", style: TextStyle(
                    color: Colors.white,
                  ),),
                  // card info
                  Row(
                    children: [
                      //card number
                      Text("**** 4199", style: TextStyle(
                    color: Colors.white,
                  ),),
                      // card expiring date
                      Text("12/23", style: TextStyle(
                    color: Colors.white,
                  ),),
                    ],
                  )
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
