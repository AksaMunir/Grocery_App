import 'package:flutter/material.dart';
import 'package:grocery_app/items.dart';

class detailPage extends StatelessWidget {
  String name;
  String price;
  String image;
  String descrip; ////des

  detailPage({
    required this.image,
    required this.name,
    required this.price,
    required this.descrip, ////des
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 465,
                    // decoration: BoxDecoration(color: Colors.white),
                  ),
                  Positioned(
                    top: -340,
                    left: -70,
                    child: Container(
                      width: 800,
                      height: 800,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(400),
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 150,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          width: 350,
                          height: 350,
                          child: Image.network(
                            image, //image
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 10,
              ),
              // Center(
              //   child: Text(
              //     "- - - - - - ",
              //     style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //         color: Colors.grey,
              //         fontSize: 20),
              //   ),
              // ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                        SizedBox(
                          width: 250,
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        SizedBox(
                          width: 40,
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
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.red),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // Text(
                    //   'Product Details',
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 25,
                    //       color: Colors.black),
                    // ),
                    Text(
                      ////des
                      descrip,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Image.network(
                              'https://thumbs.dreamstime.com/b/organic-badge-simple-one-hundred-percent-label-sign-true-farm-fresh-product-no-additives-no-preservatives-other-85484843.jpg',
                              width: 60,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '100%\nOrganic',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-F7yZ-297ty4Aq_rIh97ityXBsVtGbuPqYg&usqp=CAU',
                              width: 30,
                              height: 40,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '1 Year\nExpiration',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeEaHD_nE0FcmlyCSOwKKHcAh5cP2ShLAvlnSTiuWJpVMGvf1hUKMrijd4R_VkyAb0cEk&usqp=CAU',
                              width: 60,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '8.4\nReviews',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHzbDWGm8TxaRoDpMDo_plf-SpP_8llpaP_g&usqp=CAU',
                              width: 30,
                              height: 60,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '80 kcal\n100 GRM',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 59, 159, 62),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0)),
                              minimumSize: Size(350.0, 60.0),
                              maximumSize: Size(350.0, 60.0)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => items()));
                          },
                          child: Center(
                            child: Text(
                              "Add to cart",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
