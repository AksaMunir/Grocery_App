import 'package:flutter/material.dart';
import 'package:grocery_app/items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 80,
                child: Row(children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhS_77j1qYRRWz7SVITU9CuvZeh-YcrlMe9w1GjLc4nNj4jMoxXW-Yp3cqCo3ExoUKXjM&usqp=CAU',
                    width: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Good Morning',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  SizedBox(
                    width: 300,
                  ),
                  Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.place,
                          color: Colors.green,
                        ),
                        Text(
                          'My flat',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 0,
                        ),
                        Icon(
                          Icons.expand_more,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Search Category',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardWidget(
                      imageUrl:
                          'https://i2.wp.com/bakerbettie.com/wp-content/uploads/2018/07/fruit-custard-tart-2.jpg',
                      c: Color.fromARGB(255, 35, 91, 36),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CardWidget(
                      imageUrl:
                          'https://as1.ftcdn.net/v2/jpg/04/10/47/66/1000_F_410476663_VRd1pdF4bkXmM8FiB2kfgp1eHyQdcvny.jpg',
                      c: Colors.red,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CardWidget(
                      imageUrl:
                          'https://media.istockphoto.com/id/1409236261/photo/healthy-food-healthy-eating-background-fruit-vegetable-berry-vegetarian-eating-superfood.jpg?s=612x612&w=0&k=20&c=kYZKgwsQbH_Hscl3mPRKkus0h1OPuL0TcXxZcO2Zdj0=',
                      c: Colors.purple,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Categories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => items()));
                    },
                    child: Container(
                      child: Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 35, 91, 36),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    circularCards(
                      image:
                          'https://www.collinsdictionary.com/images/full/apple_158989157.jpg',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    circularCards(
                        image:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo7nbNChwQxODbUh9Afl-5miGTq8DDHTpfJnaWHPR-nuGM6fPeKo_CDFWord4YZ4LlJyA&usqp=CAU'),
                    SizedBox(
                      width: 10,
                    ),
                    circularCards(
                        image:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzMB5TXT5p0LTbRWq8LmiTXcMhUlESiP4qsg&usqp=CAU'),
                    SizedBox(
                      width: 10,
                    ),
                    circularCards(
                        image:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqt_-P5d7x37Y3hyqG8liOzqJlWS5CHGWRjhn0poXrUQpE_ALTuqnV0Y7AItbDjN8ipvI&usqp=CAU'),
                    SizedBox(
                      width: 10,
                    ),
                    circularCards(
                        image:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpbG4gRHMBORcXgY0fObLM-ajA5FbxRtqkSw&usqp=CAU'),
                    SizedBox(
                      width: 10,
                    ),
                    circularCards(
                        image:
                            'https://www.alfatah.pk/cdn/shop/products/WhatsApp-Image-2020-04-03-at-2.31.34-PM.jpg?v=1614162312')
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Hot Selling',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SquareCard(
                        image:
                            'https://summeryule.com/wp-content/uploads/2021/12/bell-peppers-for-weight-loss.jpeg',
                        price: '1kg, 45\$',
                        name: 'Bell pepper'),
                    SizedBox(
                      width: 10,
                    ),
                    SquareCard(
                        image:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMDCsuEsGhbqZH2aBrkkhCnIsk9iDiBmi1Aud5pUDT8MX-5yFleO3v-m467nplVGpLlnI&usqp=CAU',
                        price: '1kg, 95\$',
                        name: 'Lamb meat'),
                    SizedBox(
                      width: 10,
                    ),
                    SquareCard(
                        image:
                            'https://media.post.rvohealth.io/wp-content/uploads/2019/11/cashew-nut-nuts-bowl-732x549-thumbnail.jpg',
                        price: '1kg, 60\$',
                        name: 'Cashew'),
                    SizedBox(
                      width: 10,
                    ),
                    SquareCard(
                        image:
                            'https://cdn.mos.cms.futurecdn.net/r8NK24bmcMgSib5zWKKQkW-1200-80.jpg',
                        price: '1kg, 7\$',
                        name: 'Brocolli')
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.arrow_back_ios_new_rounded),
                  SizedBox(
                    width: 230,
                  ),
                  Icon(
                    Icons.home,
                    size: 40,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.shopping_basket_rounded,
                    color: Colors.green,
                    size: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.card_travel,
                    color: Colors.grey,
                    size: 40,
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: 40,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  String imageUrl;
  Color c;
  CardWidget({
    required this.imageUrl,
    required this.c,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 600,
      child: Stack(
        children: [
          Image.network(
            imageUrl,
            width: 600,
            height: 320,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: -20,
            right: -140,
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                color: c,
                borderRadius: BorderRadius.circular(250),
              ),
            ),
          ),
          Positioned(
            top: 85,
            right: 15,
            child: Text(
              'Ramadan Offers',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 130,
            right: 15,
            child: Text(
              'Get 25% off',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 180,
            right: 15,
            child: Container(
              height: 50,
              width: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'GRAB OFFERS',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: c,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class circularCards extends StatelessWidget {
  String image;
  circularCards({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Image.network(
        image,
        fit: BoxFit.fill,
      ),
    );
  }
}

class SquareCard extends StatelessWidget {
  String image;
  String price;
  String name;
  SquareCard({
    required this.image,
    required this.price,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 360,
        width: 210,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  image,
                  width: 190,
                  height: 190,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                price,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 20),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(
                    width: 130,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
