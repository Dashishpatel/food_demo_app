import 'package:flutter/material.dart';
import 'package:food_demo_app/addorder.dart';
import 'package:food_demo_app/addpayment.dart';

class yorders extends StatefulWidget {
  const yorders({Key? key}) : super(key: key);

  @override
  State<yorders> createState() => _yordersState();
}

class _yordersState extends State<yorders> {
  final List<String> texts_1 = [
    "Cookie Sandwich",
    "Combo Burger",
    "Oyster Dish",
  ];
  final List<String> imagePathsrow1 = [
    "assets/1.png",
    "assets/1.png",
    "assets/2.png",
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
                      builder: (context) => addorder(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                ),
              ),
              // Container(
              //   child: Icon(Icons.arrow_back_ios_new,
              //   color: Colors.black,),
              // ),
              Container(
                padding: EdgeInsets.only(left: 100),
                alignment: Alignment.center,
                child: Text(
                  'Your Orders     ',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black),
                ),
              )
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: List.generate(3, (index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 25, top: 25),
                          child: Image.asset(imagePathsrow1[index]),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10, top: 20),
                          child: Text(
                            texts_1[index],
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 15, top: 20),
                          child: Text(
                            'AUD\$10',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xFFEEA734)),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 250,
                          padding: EdgeInsets.only(left: 25, top: 10),
                          child: Text(
                            'Shortbread, chocolate turtle cookies, and red velvet.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                );
              }),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, top: 35, bottom: 10),
                  width: 100,
                  child: Text(
                    'Subtotal Delivery',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200,top: 35),
                  child: Container(
                    width: 50,


                    child: Text(
                      'AUD30\$0',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(right: 15, top: 5,left: 300 ),
              child: Text(
                'AUD\$10',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xFFEEA734)),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  padding: EdgeInsets.only(top: 40,right: 180,left: 20),
                  child: Text('Add more items',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                      color: Color(0xFFEEA734)),
                  ),),
                InkWell(

                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            addpayment(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 40,right: 20),
                    alignment: Alignment.center,
                    child: Image(
                      image: AssetImage(
                        "assets/forward.png",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  padding: EdgeInsets.only(top: 40,right: 205,left: 20),
                  child: Text('Promo code',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF010F07)),
                  ),),
                InkWell(

                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            addpayment(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 40,right: 10),
                    alignment: Alignment.center,
                    child: Image(
                      image: AssetImage(
                        "assets/forward.png",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 70,),
            Container(
              padding: EdgeInsets.only(right: 10,left: 10,),
              width: 335,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>  addpayment(),
                    ),
                  );
                },
                child: Text(textAlign: TextAlign.center, 'Get Started'),
                /* style: TextStyle(
                                          height: 19,
                                          fontFamily: 'Raleway',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.white,),), */

                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFEEA734),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
