import 'package:flutter/material.dart';
import 'package:food_demo_app/creaccount.dart';
import 'package:food_demo_app/forpassword.dart';
import 'package:food_demo_app/signin.dart';

class repassword extends StatefulWidget {
  const repassword({Key? key}) : super(key: key);

  @override
  State<repassword> createState() => _repasswordState();
}

class _repasswordState extends State<repassword> {
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
                      builder: (context) =>
                          forpassword(),
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
              Container(
                padding: EdgeInsets.only(left: 90),
                alignment: Alignment.center,
                child: Text('Forgot Password ',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black
                  ),),
              )
            ],
          )
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(

              width: 338,
              padding: EdgeInsets.only(left: 15),
              child: Text('Reset email sent',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 33,
                  letterSpacing: 0.22,
                ),),
            ),
            SizedBox(height: 20,),
            Row(

              children: [
                Container(
                  width: 270,
                 padding: EdgeInsets.only(left: 20),
                  child: Text('We have sent a instructions email to sajin tamang@figma.com.',

                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),),
                ),
                Spacer(),

                Container(
                //  padding: EdgeInsets.only(right: 50,),
                  child: Text('Having problem?',
                    style: TextStyle(
                        color: Color(0xFFEEA734),
                        fontSize: 12,
                        fontWeight: FontWeight.w300
                    ),),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 40, right: 230),
              child: Text(
                "Email address",
                style: TextStyle(

                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  fontFamily: ("Raleway"),
                  fontStyle: FontStyle.normal,
                  color: Color(0xFF868686),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              color: Color(0xFFF5F7F8),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "sajin tamang figma @.com",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),



            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(right: 15,left: 15),
              width: 335,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>  creaccount(),
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
            SizedBox(height: 40,),
            Container(
              child: Image(
                image: AssetImage(
                  "assets/w7.png",
                ),
              ),
            )

          ],
        ),
      ),

    );
  }
}
