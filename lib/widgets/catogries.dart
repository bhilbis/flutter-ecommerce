import 'package:flutter/material.dart';

class Catogries extends StatelessWidget {
  const Catogries({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 18),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.grey.shade300
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: Image(
                        height: 35,
                        image: AssetImage('assets/icons/burger.png'),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('Burger'),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 18),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.grey.shade300
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: Image(
                        height: 35,
                        image: AssetImage('assets/icons/ramen.png'),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('Ramen'),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 18),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.grey.shade300
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: Image(
                        height: 35,
                        image: AssetImage('assets/icons/salad.png'),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('Salad'),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 18),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.grey.shade300
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: Image(
                        height: 35,
                        image: AssetImage('assets/icons/cake.png'),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('Cake'),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 18, right: 18),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.grey.shade300
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: Image(
                        height: 35,
                        image: AssetImage('assets/icons/biryani.png'),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Text('Biryani'),
              )
            ],
          )
        ],
      ),
    );
  }
}