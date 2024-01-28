import 'package:flutter/material.dart';

import '../screens/mainpage_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          MainPageScreen(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Product Category', style: TextStyle(
                  fontFamily: ('Font'),
                  fontSize: 18
                ),),
                SizedBox(
                  width: 3,
                ),
                Row (
                  children: [
                    Text('See more', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow
                    ),),
                    Icon(Icons.east_sharp, size: 20, color: Colors.orange,)
                  ],
                )
              ],
            ),
          )
        ]
      ),
    );
  }
}