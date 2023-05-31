
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
            Row(
              children: [
                Text("My Cards")
              ],
            )
      
            // cards
      
            //transaction button
      
            // column stats + transaction
      
          ],
        ),
      ),
    );
  }
}