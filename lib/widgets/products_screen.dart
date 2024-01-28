import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 18.0,left: 18.0),
          child: Container(
            height: 250,
            width: 200,
            color: Colors.black,
            // decoration: BoxDecoration(
            //   color: Colors.black,
            // ),
          ),
        )
      ],
    );
  }
}