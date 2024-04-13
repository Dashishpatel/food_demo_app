import 'package:flutter/material.dart';
import 'package:food_demo_app/creaccount.dart';
import 'package:food_demo_app/repassword.dart';
import 'package:food_demo_app/signin.dart';

import 'home.dart';

class getstart extends StatefulWidget {
  const getstart({Key? key}) : super(key: key);

  @override
  State<getstart> createState() => _getstartState();
}

class _getstartState extends State<getstart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
      child:AppBar(
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
                      builder: (context) =>
                          creaccount(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Icon(Icons.arrow_back_ios_new,
                    color: Colors.black,),
                ),
              ),
              // Container(
              //   child: Icon(Icons.arrow_back_ios_new,
              //   color: Colors.black,),
              // ),
              Column(
                children: [
                  Container(
                    width: 290,
                    padding: EdgeInsets.only(left: 90),
                    alignment: Alignment.center,
                    child: Text('Login to Tamang Food Services',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black
                      ),),
                  ),
                ],
              )
            ],
          )
      ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(

              width: 338,
              padding: EdgeInsets.only(left: 15),
              child: Text('Get started with Foodly',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  letterSpacing: 0.22,
                ),),
            ),
            SizedBox(height: 20,),
            Container(
              width: 300,
              padding: EdgeInsets.only(left: 0),
              child: Text('Enter your phone number to use foodly and enjoy your food :)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),),
            ),





            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(right: 10,left: 30),
              width: 335,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>  home(),
                    ),
                  );
                },
                child: Text(textAlign: TextAlign.center, 'Resend Password'),
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
