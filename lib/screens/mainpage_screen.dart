import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/main.jpg')
              
            )
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: 60, left: 15),
          child: Container(
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/icons/man.png')
                    )
                  ),
                ),

                const SizedBox(
                  width: 10,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Hi, Developers', style: TextStyle(
                      fontSize: 20,
                      fontFamily: ('Montserrat')),
                      ),
                    Text("Let's find your product !", style: TextStyle(
                      fontSize: 15,
                      ),
                    ),                    
                  ],
                ),

                const SizedBox(
                  width: 100,
                  ),
                  Container(
                    height: 50,
                    width: 50,  
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(80),
                    ),
                    child: const Center(
                      child: Badge(
                        label: Text('9+'),
                        child: Image(
                          height: 30,
                          width: 30,
                          image: AssetImage('assets/icons/bell.png'),
                        )
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),

        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 165.0,),
            child: Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(28)
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0,),
                    child: Image(
                      height: 25,
                      width: 22,
                      image: AssetImage('assets/icons/search-interface-symbol.png')),
                  ),

                  SizedBox(
                    width: 15,
                  ),                  
                  Text('Search for Products', 
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                  ),
                  
                  SizedBox(
                    width: 100,
                  ),
                  Image(
                    height: 30,
                    width: 30,
                    image: AssetImage('assets/icons/filter.png')),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}