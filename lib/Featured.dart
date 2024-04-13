import 'package:flutter/material.dart';
import 'package:food_demo_app/food.dart';
import 'package:food_demo_app/singlere.dart';

class Featured extends StatefulWidget {
  const Featured({Key? key}) : super(key: key);

  @override
  State<Featured> createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  final List<String> imagePathsrow1 = [
    "assets/bg.png",

    "assets/bg3.png",
    "assets/bg2.png",
     "assets/bg4.png",
    "assets/bg5.png",
    "assets/bg6.png",
  ];
  final List<String> imagePathsrow2 = [
    "assets/bg2.png",
    "assets/bg4.png",
    "assets/bg6.png",
  ];
  final List<String> texts = [
    "Tacos Nanchas",
    "KFC Foods",
    "Tacos Nanchas",
  ];
  final List<String> texts_2 = [
    "McDonald's",
    "Cafe MayField’s",
    "Tacos Nanchas",
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                      builder: (context) => food(),
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
              Container(
                padding: EdgeInsets.only(left: 90),
                alignment: Alignment.center,
                child: Text(
                  'Featured Partners ',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black),
                ),
              )
            ],
          )),
      body: SingleChildScrollView(
        child:  Column (
          children: List.generate(
            3,
                (index) {

              return Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,bottom: 20,left: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: Color(0xFFF5F7F8),
                          ),
                          child: Stack(
                            children: [
                              Image.asset(imagePathsrow1[index]),
                              Container(


                                padding: EdgeInsets.only(left:20 ,top: 230),
                              //  child: Image.asset('assets/fast.png',),
                                child: Image(

                                  image: AssetImage(
                                    "assets/fast.png",
                                  ),
                                ),
                              ),
                              Container(


                                padding: EdgeInsets.only(left:40 ,top: 230),
                                //  child: Image.asset('assets/fast.png',),
                                child: Text('25min',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xFFFFFFFF)
                                  ),),
                              ),
                              Container(


                                padding: EdgeInsets.only(left:20 ,top: 250),
                                //  child: Image.asset('assets/fast.png',),
                                child: Image(

                                  image: AssetImage(
                                    "assets/delivery2.png",
                                  ),
                                ),
                              ),
                              Container(


                                padding: EdgeInsets.only(left:40 ,top: 250),
                                //  child: Image.asset('assets/fast.png',),
                                child: Text('Free',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xFFFFFFFF)
                                  ),),
                              ),
                              Container(

                                padding: EdgeInsets.only(left:110 ,top: 250),
                                //child: Image.asset('assets/Rate.png'),
                                child: Image(

                                  image: AssetImage(
                                    "assets/Rate.png",
                                  ),
                                ),
                              ),
                            ],
                          ),


                        ),

                      ),
                      Container(

                        padding: EdgeInsets.only(right: 10),
                        child: Text(texts[index],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300
                        ),),
                      ),
                      Container(
                        child: Image(

                          image: AssetImage(
                            "assets/T2.png",
                          ),
                        ),

                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 18),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: Color(0xFFF5F7F8),
                          ),
                          child: Stack(
                            children: [
                  InkWell(

                  onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) =>
                  singlere(),
                  ),
                  );
                  },
                    child:Container(
                              child: Image.asset(imagePathsrow2[index]),
                  ),
                  ),

                              Container(


                                padding: EdgeInsets.only(left:20 ,top: 230),
                                //  child: Image.asset('assets/fast.png',),
                                child: Image(

                                  image: AssetImage(
                                    "assets/fast.png",
                                  ),
                                ),
                              ),
                              Container(


                                padding: EdgeInsets.only(left:40 ,top: 230),
                                //  child: Image.asset('assets/fast.png',),
                                child: Text('25min',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFFFFFFFF)
                                ),),
                              ),
                              Container(


                                padding: EdgeInsets.only(left:20 ,top: 250),
                                //  child: Image.asset('assets/fast.png',),
                                child: Image(

                                  image: AssetImage(
                                    "assets/delivery2.png",
                                  ),
                                ),
                              ),
                              Container(


                                padding: EdgeInsets.only(left:40 ,top: 250),
                                //  child: Image.asset('assets/fast.png',),
                                child: Text('Free',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xFFFFFFFF)
                                  ),),
                              ),
                              Container(
                                padding: EdgeInsets.only(left:110 ,top: 250 ),
                                child: Image.asset("assets/Rate.png"),
                              ),

                            ],
                          ),
                        ),

                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.only(right: 25),
                        child: Text(texts_2[index],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300
                        ),),
                      ),
                      Container(
                        child: Image(

                          image: AssetImage(
                            "assets/T2.png",
                          ),
                        ),

                      )

                    ],
                  ),

                ],
              );
            },
          ),
        ),
      ),
      ),
    );
  }
}
