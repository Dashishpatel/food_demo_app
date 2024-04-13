import 'package:flutter/material.dart';
import 'package:food_demo_app/signin.dart';
import 'package:food_demo_app/welcome2.dart';
import 'package:food_demo_app/welcome3.dart';








class welcome4 extends StatefulWidget {
  const welcome4({Key? key}) : super(key: key);

  @override
  State<welcome4> createState() => _welcome4State();
}

class _welcome4State extends State<welcome4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30,top: 90),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Image(
                      image: AssetImage(
                        "assets/w1.png",
                      ),

                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Image(
                      image: AssetImage(
                        "assets/w2.png",
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 55,),
              Container(
                padding: EdgeInsets.only(left: 35,right: 50),
                child: Image(
                  image: AssetImage(
                    "assets/w6.png",
                  ),
                ),

              ),
              SizedBox(height: 35,),
              Container(
                padding: EdgeInsets.only(left: 35,right: 50),
                alignment: Alignment.center,
                child: Text('Choose your food',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,

                  ),),
              ),
              SizedBox(height: 30,),
              Container(

                padding: EdgeInsets.only(right: 45,left: 20),


                // alignment: Alignment.center,
                child: Text(textAlign: TextAlign.center,
                  'Easily find your type of food craving and you’ll get delivery in wide range.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,


                  ),),
              ),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.only(right: 25),
                width: 335,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>  signin(),
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
      ),
    );
  }
}










