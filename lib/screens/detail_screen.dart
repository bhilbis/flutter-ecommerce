import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: 412,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/mainfood.png')
                  )
                ),
              )
            ],
          ),SizedBox(
            height: 20,
          ),
          Text('Gyudon Steak', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                Icon(Icons.watch_later_outlined),
                Text('15 mins'),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.stop_rounded),
                Icon(Icons.location_on),
                Icon(Icons.stop_rounded),
                Icon(Icons.star),
                Text('4,9', style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                Text('(1.7k reviews)')
              ],
            ),
          )
        ],
      ),
    );
  }
}