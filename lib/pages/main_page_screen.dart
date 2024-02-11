import 'package:flutter/material.dart';
import '../screens/mainpage_screen.dart';
import '../widgets/catogries.dart';
import '../widgets/products_screen.dart';

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
                Text('Category', style: TextStyle(
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
                      color: Colors.orange
                    ),),
                    Icon(Icons.east_sharp, size: 20, color: Colors.orange,)
                  ],
                )
              ],
            ),
          ),

          Catogries(),

          SizedBox(
            height: 20,
          ),
           Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('For You', style: TextStyle(
                  fontFamily: ('Font'),
                  fontSize: 18
                ),),
            Row(
              children: [
                Text('All', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange
                    ),),
                Icon(Icons.arrow_drop_down_rounded, size: 20, color: Colors.orange,)
              ],
            )
              ],
            ),
          ),
          
          SizedBox(
            height: 20,
          ),
           Products(),
        ]
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: (){},
        child: Icon(Icons.card_travel_rounded, color: Colors.white,),
      ),

      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                height: 35,
                image: AssetImage(
                  'assets/images/home.png'),
              ),

              Icon(Icons.account_circle, size: 38,),
              
              Image(
                height: 35,
                image: AssetImage(
                  'assets/icons/2488749.png'),
              ),
              Image(
                height: 35,
                image: AssetImage(
                  'assets/icons/3364202.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}