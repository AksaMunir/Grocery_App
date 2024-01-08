import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  String name;
  String price;
  String quantity;
  cart(
    this.name,
    this.price,
    this.quantity,
  );

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
          ),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 244, 243, 243),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: widget.name,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      TextSpan(
                          text: widget.price,
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 15))
                    ])),
                  ),
                  SizedBox(
                    width: 380,
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    widget.quantity,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 30,
                    width: 30,
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
            ),
          ),
        ]),
      ),
    );
  }
}

class mainCart extends StatefulWidget {
  const mainCart({super.key});

  @override
  State<mainCart> createState() => _mainCartState();
}

class _mainCartState extends State<mainCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            cart('Red Onions', '1kg, 45\$', '1'),
            cart('Fresh Tomatoes', '1kg, 34\$', '2'),
            cart('Potatoes', '1kg, 65\$', '4'),
            cart('Red Beans', '1kg, 12\$', '5'),
          ],
        ),
      ),
    );
  }
}
