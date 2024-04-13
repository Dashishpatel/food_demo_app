import 'package:flutter/material.dart';
import 'package:food_demo_app/forpassword.dart';
import 'package:food_demo_app/welcome4.dart';


class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
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
                        welcome4(),
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
              padding: EdgeInsets.only(left: 117),
              alignment: Alignment.center,
              child: Text('Sign in ',
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
              child: Text('Welcome to Tamang Food Services',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 33,
                letterSpacing: 0.22,
              ),),
            ),
            SizedBox(height: 20,),
            Container(
              width: 300,
              padding: EdgeInsets.only(left: 0),
              child: Text('Enter your Phone number or Email address for sign in. Enjoy your food :),',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),),
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

            Container(
              padding: EdgeInsets.only(top: 15, right: 245),
              child: Text(
                "Password",
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
                  hintText: "******",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
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
                child: Text('Forget Password?',
                style: TextStyle(
                  color: Color(0xFF868686),
                ),)
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
                      builder: (context) =>  signin(),
                    ),
                  );
                },
                child: Text(textAlign: TextAlign.center, 'Sign In '),
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
            Padding(
              padding: const EdgeInsets.only(left: 60,top: 20),
              child: Row(

                children: [

                  Container(
                    child: Text('Don’t have account?',
                      style: TextStyle(
                        color: Color(0xFF868686),
                          fontSize: 12,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    child: Text('Create new account.',
                      style: TextStyle(
                        color: Color(0xFFEEA734),
                        fontSize: 12,
                        fontWeight: FontWeight.w300
                      ),),
                  )
                 ],
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
                      builder: (context) =>  signin(),
                    ),
                  );
                },
             child:  Row(
               children: [
                 Container(
                child: Image(
                  image: AssetImage(
                    "assets/fac.png",
                  ),
                ),
                 ),
                 SizedBox(width: 20,),
                 Container(
                   child: Text('Connect with Facebook'),
                 )
              ],
               ),
                /* style: TextStyle(
                                          height: 19,
                                          fontFamily: 'Raleway',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.white,),), */

                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF395998),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(right: 15,left: 15),
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
                child:  Row(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage(
                          "assets/gog.png",
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      child: Text('Connect with google'),
                    )
                  ],
                ),
                /* style: TextStyle(
                                          height: 19,
                                          fontFamily: 'Raleway',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.white,),), */

                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF4285F4),
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
