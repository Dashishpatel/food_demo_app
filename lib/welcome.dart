import 'package:flutter/material.dart';
import 'package:food_demo_app/welcome2.dart';








void main() {
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: welcome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
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
                    "assets/w3.png",
                  ),
                ),

              ),
              SizedBox(height: 35,),
              Container(
                padding: EdgeInsets.only(left: 35,right: 50),
                alignment: Alignment.center,
                child: Text('Welcome',
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
    'It’s a pleasure to meet you. We are excited that you’re here so let’s get started!',
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
                        builder: (context) =>  welcome2(),
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

