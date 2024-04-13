import 'package:flutter/material.dart';
import 'package:food_demo_app/home.dart';

import 'Featured.dart';

class food extends StatefulWidget {
  const food({Key? key}) : super(key: key);

  @override
  State<food> createState() => _foodState();
}

class _foodState extends State<food> {
  final List<String> imagePaths = [
    "assets/B.png",
    "assets/B.png",
    "assets/B.png",
  ];
  final List<String> imagePaths2 = [
    "assets/B3.png",
    "assets/B3.png",
    "assets/B3.png",
  ];
  final List<String> texts_nu = [
    "Krispy Creme",
    "Mario Italiano",
    "Mario Italiano",
  ];
  final List<String> texts = [
    "St Georgece Terrace, Perth ",
    "Hay street , Perth City",
    "Hay street , Perth City",
  ];
  final List<String> texts2 = [
    "McDonald’s ",
    "The Halal Guys",
    "The Halal Guys",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => home(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                  ),
                ),
              ),
              // Container(
              //   child: Icon(Icons.arrow_back_ios_new,
              //   color: Colors.black,),
              // ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 90),
                    alignment: Alignment.center,
                    child: Text(
                      'Delivery to ',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xFFEEA734)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 90),
                    alignment: Alignment.center,
                    child: Text(
                      ' HayStreet, Perth',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),
                ],
              )
            ],
          )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 13, top: 30, right: 10),
              child: Image(
                image: AssetImage(
                  "assets/Header.png",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 10),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    //padding: EdgeInsets.only(right: 225, top: 15),
                    child: Text(
                      'Featured Partners',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                    ),
                  ),
                  Spacer(),
                  // Container(
                  //   padding: EdgeInsets.only(right: 10),
                  //   child: Text('See all'),
                  // ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Featured(),
                        ),
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.only(right: 10),
                      //alignment: Alignment.center,
                      child: Text('See all')
                    ),
                  ),
                ],
              ),

            ),
            // Container(
            //   padding: EdgeInsets.only(right: 240, top: 2),
            //   child: Text(
            //     ' Partners',
            //     style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            //   ),
            // ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: List.generate(
                      3,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              top: 5, left: 10, right: 15, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                            //    padding: EdgeInsets.only(left: 10),
                                child: Image.asset(
                                  imagePaths[index],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                               // padding: EdgeInsets.only(left: 0,right: 65,top: 10),
                                child: Text(
                                  texts_nu[index],
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300
                                  ),

                                ),
                              ),
                              Container(
                               // padding: EdgeInsets.only(left: 0,right: 30,),
                                child: Text(
                                  texts[index],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400
                                  ),

                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 0,right: 20,top: 10),
                                    child: Image.asset('assets/Rate.png'),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 0,right: 100,top: 10),
                                    child: Text('25min',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                      color: Color(0xFF010F07)
                                    ),),
                                  ),
                                  Container(


                                    child: Image(

                                      image: AssetImage(
                                        "assets/dot.png",
                                      ),
                                    ),
                                  )

                                  // Container(
                                  //
                                  //
                                  //   child: Image.asset('assets/dot.png'),
                                  // ),
                                  // Container(
                                  //   padding: EdgeInsets.only(left: 0,right: 90,top: 10),
                                  //   child: Text('Free delivery',
                                  //     style: TextStyle(
                                  //         fontWeight: FontWeight.w300,
                                  //         fontSize: 14,
                                  //         color: Color(0xFF010F07)
                                  //     ),),
                                  // ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                ],
              ),
            ),
            Container(
                 padding: EdgeInsets.only(top: 20),
              child: Image(
                image: AssetImage(
                  "assets/ba.png",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 140,top: 20),
              child: Container(

                width: 180,
                //padding: EdgeInsets.only(right: 225, top: 15),
                child: Text(
                  'Best Picks Restaurants by team',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
              ),


            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: List.generate(
                      3,
                          (index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              top: 5, left: 10, right: 15, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                //    padding: EdgeInsets.only(left: 10),
                                child: Image.asset(
                                  imagePaths2[index],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                // padding: EdgeInsets.only(left: 0,right: 65,top: 10),
                                child: Text(
                                  texts2[index],
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300
                                  ),

                                ),
                              ),
                              Container(
                                // padding: EdgeInsets.only(left: 0,right: 30,),
                                child: Text(
                                  texts[index],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400
                                  ),

                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 0,right: 20,top: 10),
                                    child: Image.asset('assets/Rate.png'),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 0,right: 100,top: 10),
                                    child: Text('25min',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14,
                                          color: Color(0xFF010F07)
                                      ),),
                                  ),
                                  Container(

                                    child: Image(
                                      image: AssetImage(
                                        "assets/dot.png",
                                      ),
                                    ),
                                  )

                                  // Container(
                                  //
                                  //
                                  //   child: Image.asset('assets/dot.png'),
                                  // ),
                                  // Container(
                                  //   padding: EdgeInsets.only(left: 0,right: 90,top: 10),
                                  //   child: Text('Free delivery',
                                  //     style: TextStyle(
                                  //         fontWeight: FontWeight.w300,
                                  //         fontSize: 14,
                                  //         color: Color(0xFF010F07)
                                  //     ),),
                                  // ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 160,top: 20),
              child: Container(


                //padding: EdgeInsets.only(right: 225, top: 15),
                child: Text(
                  'All Restaurants',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
              ),



            ),
            SizedBox(height: 15,),
            Column(
              children: [
                Container(
                  child: Image(
                    image: AssetImage(
                      "assets/B2.png",
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 240,top: 10),
                  child: Text('McDonald',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),),
                ),
                Container(
                  padding: EdgeInsets.only(right: 45),
                  child: Image(
                    image: AssetImage(
                      "assets/T.png",
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('4.3',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      child: Image(
                        image: AssetImage(
                          "assets/rating.png",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('200+ Ratings',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),),
                    ),
                    SizedBox(width: 14,),
                    Container(
                      child: Image(
                        image: AssetImage(
                          "assets/clock.png",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: Text('25 Min',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      child: Image(
                        image: AssetImage(
                          "assets/dot.png",
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      child: Image(
                        image: AssetImage(
                          "assets/delivery.png",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: Text('Free',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),),
                    ),

                  ],
                )

              ],
            ),
            SizedBox(height: 15,),
            Column(
              children: [
                Container(
                  child: Image(
                    image: AssetImage(
                      "assets/B4.png",
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 210,top: 10),
                  child: Text('Cafe Brichor’s',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(right: 45),
                  child: Image(
                    image: AssetImage(
                      "assets/T.png",
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('4.3',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      child: Image(
                        image: AssetImage(
                          "assets/rating.png",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('200+ Ratings',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),),
                    ),
                    SizedBox(width: 14,),
                    Container(
                      child: Image(
                        image: AssetImage(
                          "assets/clock.png",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: Text('25 Min',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      child: Image(
                        image: AssetImage(
                          "assets/dot.png",
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      child: Image(
                        image: AssetImage(
                          "assets/delivery.png",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: Text('Free',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),),
                    ),

                  ],
                )

              ],
            ),
            SizedBox(height: 15,),
            Column(
              children: [
                Container(
                  child: Image(
                    image: AssetImage(
                      "assets/re.png",
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 210,top: 10),
                  child: Text('Cafe Brichor’s',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(right: 45),
                  child: Image(
                    image: AssetImage(
                      "assets/T.png",
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('4.3',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      child: Image(
                        image: AssetImage(
                          "assets/rating.png",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('200+ Ratings',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),),
                    ),
                    SizedBox(width: 14,),
                    Container(
                      child: Image(
                        image: AssetImage(
                          "assets/clock.png",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: Text('25 Min',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      child: Image(
                        image: AssetImage(
                          "assets/dot.png",
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      child: Image(
                        image: AssetImage(
                          "assets/delivery.png",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: Text('Free',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),),
                    ),

                  ],
                )

              ],
            ),


          ],
        ),
      ),
    );
  }
}
