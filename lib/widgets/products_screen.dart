import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0,bottom: 5),
            child: Container(
              height: 290,
              width: 220,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2,
                  offset: Offset(
                    1,
                    0.5,
                  )
                ),],
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Image(
                    height: 150,
                    image: AssetImage('assets/images/image3.png'),
                  ),
                  Text('Gyudon Steak', style: TextStyle(
                    fontFamily: ('Font'),
                    fontSize: 20,
                  ),),
                  SizedBox(
                          height: 8,
                        ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.watch_later_outlined),
                        SizedBox(
                          width: 6,
                        ),
                        Text("18 Mins"),
                        SizedBox(
                          width: 6,
                        ),
                        Text('5 Km')
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,top: 11),
                        child: Text('\$50', style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, top: 11,),
                        child: FloatingActionButton(
                          backgroundColor: Colors.orange,
                          child: Icon(Icons.add,color: Colors.white,),
                          onPressed: (){},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
      
          Padding(
            padding: const EdgeInsets.only(left: 20.0,bottom: 5),
            child: Container(
              height: 290,
              width: 220,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2,
                  offset: Offset(
                    1,
                    0.5,
                  )
                ),],
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Image(
                    height: 150,
                    image: AssetImage('assets/images/image1.png'),
                  ),
                  Text('Spaghetti', style: TextStyle(
                    fontFamily: ('Font'),
                    fontSize: 20,
                  ),),
                  SizedBox(
                          height: 8,
                        ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.watch_later_outlined),
                        SizedBox(
                          width: 6,
                        ),
                        Text("18 Mins"),
                        SizedBox(
                          width: 6,
                        ),
                        Text('5 Km')
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,top: 11),
                        child: Text('\$50', style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10,top: 11),
                        child: FloatingActionButton(
                          backgroundColor: Colors.orange,
                          child: Icon(Icons.add,color: Colors.white,),
                          onPressed: (){},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
      
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 18,bottom: 5),
            child: Container(
              height: 290,
              width: 220,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2,
                  offset: Offset(
                    1,
                    0.5,
                  )
                ),],
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Image(
                    height: 150,
                    image: AssetImage('assets/images/image2.png'),
                  ),
                  Text('Gyudon Steak', style: TextStyle(
                    fontFamily: ('Font'),
                    fontSize: 20,
                  ),),
                  SizedBox(
                          height: 8,
                        ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.watch_later_outlined),
                        SizedBox(
                          width: 6,
                        ),
                        Text("18 Mins"),
                        SizedBox(
                          width: 6,
                        ),
                        Text('5 Km')
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,top: 11),
                        child: Text('\$50', style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10,top: 11),
                        child: FloatingActionButton(
                          backgroundColor: Colors.orange,
                          child: Icon(Icons.add,color: Colors.white,),
                          onPressed: (){},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
      
        ],
      ),
    );
  }
}