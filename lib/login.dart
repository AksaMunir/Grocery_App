import 'package:flutter/material.dart';
import 'package:grocery_app/home.dart';
import 'package:grocery_app/intro.dart';
import 'package:grocery_app/items.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => introPage()));
                },
                child: Container(
                  height: 25,
                  width: 25,
                  color: Color.fromARGB(255, 237, 242, 250),
                  child: Icon(
                    Icons.arrow_back,
                    size: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 237, 242, 250),
                          borderRadius: BorderRadius.circular(40)),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    bottom: 0,
                    child: Center(
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/1514/1514935.png',
                        width: 45,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Enter Your Mobile\n        Number',
                  style: TextStyle(fontSize: 35),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'We will send you verification code.',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Center(
                child: Container(
                  width: 250,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                        labelText: '+44 (000)000-00-00',
                        border: InputBorder.none),
                    cursorColor: Colors.black,
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 59, 159, 62),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0)),
                        minimumSize: Size(300.0, 60.0),
                        maximumSize: Size(300.0, 60.0)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'By clicking on continue, youre agreeging\n                to our term of use',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ),
              // SimpleGrid(),
            ],
          ),
        ),
      ),
    );
  }
}

// class SimpleGrid extends StatefulWidget {
//   @override
//   State<SimpleGrid> createState() => _SimpleGridState();
// }

// class _SimpleGridState extends State<SimpleGrid> {
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 3,
//         crossAxisSpacing: 8.0,
//         mainAxisSpacing: 8.0,
//       ),
//       itemCount: 12,
//       padding: EdgeInsets.all(8.0),
//       itemBuilder: (context, index) {
//         return GridItem(index + 1);
//       },
//     );
//   }
// }

// class GridItem extends StatelessWidget {
//   final int itemNumber;

//   const GridItem(this.itemNumber);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue,
//       child: Center(
//         child: Text(
//           '$itemNumber',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 24.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }
