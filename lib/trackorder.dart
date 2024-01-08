import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Stack(
        children: [
          Image.network(
            'https://www.locate2u.com/wp-content/uploads/software-design.png',
            width: 200,
          ),
          OverflowBox(
            maxHeight: 50,
            minHeight: 10,
            maxWidth: 30,
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 500,
              width: 500,
              color: Colors.amberAccent,
            ),
          ),
        ],
      ),
    );
  }
}
