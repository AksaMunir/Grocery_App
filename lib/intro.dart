import 'package:flutter/material.dart';
import 'package:grocery_app/login.dart';
import 'package:grocery_app/mainScreen.dart';

class introPage extends StatefulWidget {
  const introPage({super.key});

  @override
  State<introPage> createState() => _introPageState();
}

class _introPageState extends State<introPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                    color: Colors.white, height: 400, width: double.infinity),
                Positioned(
                    top: -100,
                    left: -80,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        color: Color.fromARGB(255, 245, 249, 255),
                      ),
                    )),
                Positioned(
                    right: -20,
                    top: -50,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        color: Color.fromARGB(255, 245, 249, 255),
                      ),
                    )),
                Positioned(
                    top: 20,
                    left: 180,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/1514/1514935.png',
                        fit: BoxFit.cover,
                      ),
                    )),
                Positioned(
                    top: 280,
                    left: 20,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/1514/1514935.png',
                        fit: BoxFit.cover,
                      ),
                    )),
                Positioned(
                    top: 320,
                    right: -20,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/1514/1514935.png',
                        fit: BoxFit.cover,
                      ),
                    )),
                Positioned(
                    top: 110,
                    left: 50,
                    child: Text(
                      ' Get your groceries\ndelivered to your home',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: 220,
                    left: 60,
                    child: Text(
                      ' The best delivery app in town for\ndelivering your daily fresh groceries',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 220, 220, 220)),
                    )),
                Positioned(
                    top: 310,
                    left: 130,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 59, 159, 62),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0)),
                          minimumSize: Size(150.0, 60.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => loginScreen()));
                        },
                        child: Center(
                          child: Text(
                            "Shop Now",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        )))
              ],
            ),
            Image.network(
              'https://img.freepik.com/premium-photo/vegetables-fruits-healthy-food-fruits-vegetables-black-stone-background-tropical-fruits-top-view-free-space-your-text_187166-9096.jpg',
              height: 250,
            ),
          ],
        ),
      ),
    );
  }
}
