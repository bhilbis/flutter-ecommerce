import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 330,
                width: 450,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/mainfood.png',
                        ))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 58.0, left: 18),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(80)),
                        child: Icon(Icons.arrow_back_rounded),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 58.0, left: 18, right: 18),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(80)),
                        child: Icon(isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? Colors.red : null,),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Gyudon Steak',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              children: [
                Icon(
                  Icons.watch_later_outlined,
                  color: Colors.green,
                ),
                Text('15 mins'),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.orange,
                ),
                Text('500Km'),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                Text(
                  '4,9',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('(1.7k reviews)'),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            color: Colors.grey,
            height: 26,
            thickness: 1,
            indent: 4,
            endIndent: 4,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
              right: 18.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '\$50.00',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.orange),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                      ),
                  height: 60,
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(80)),
                        height: 37,
                        width: 37,
                        child: const Center(
                            child: Text(
                          '-',
                          style: TextStyle(color: Colors.white, fontSize: 27),
                        )),
                      ),
                      const Text(
                        '2',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(80)),
                        height: 40,
                        width: 40,
                          child: const Center(
                              child: Text(
                            '+',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'about food',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'lorem ipsum dolor sit amet and con magna al'
                    'element eget in id ipsum dolor sit amet'
                    'and con magna al element eget in id and eget in'
                    'id and eget in id and eget in id and e',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  'Add to order \$50.00',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}