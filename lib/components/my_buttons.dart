import 'package:flutter/material.dart';

class mybuttons extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;
  const mybuttons(
      {required this.buttonText, required this.iconImagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            print("Hello");
          },
          child: Container(
            height: 80,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Image.asset(iconImagePath),
              // child: IconButton(onPressed: (){}, icon: Icon(Icons.send)),
            ),
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
