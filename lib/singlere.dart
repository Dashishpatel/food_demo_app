import 'package:flutter/material.dart';
import 'package:food_demo_app/Featured.dart';
import 'package:food_demo_app/addorder.dart';


class singlere extends StatefulWidget {
  const singlere({Key? key}) : super(key: key);

  @override
  State<singlere> createState() => _singlereState();
}

class _singlereState extends State<singlere> {
  final List<String> imagePaths = [
    "assets/F1.png",
    "assets/F2.png",
    "assets/F1.png",
  ];
  final List<String> imagePaths2 = [
    "assets/food1.png",
    "assets/food2.png",
    "assets/food3.png",
    "assets/food4.png",
    "assets/food5.png",
  ];
  final List<String> texts = [
    "Cookie Sandwich ",
    "Chow Fun",
    "Dim SUm",
  ];
  final List<String> texts2 = [
    "Beef & Lamb ",
    "Seafood",
    "Appetizers",
    "Dim Sum",
  ];
  final List<String> texts3 = [
    "Cookie Sandwich ",
    "Combo Burger",
    "Combo Sandwich",
    "Oyster Dish",
    "Oyster On Ice",
  ];



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
    child:  Scaffold(
 body: SingleChildScrollView(
   child: Column(
     children: [
       Container(
         child: Stack(
           children: [
             Image.asset('assets/Header2.png'),
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
                 padding: EdgeInsets.only(left:20 ,top: 30,right: 310),
                 alignment: Alignment.center,
                  child: Image(
                     image: AssetImage(
                        "assets/back.png",
                      ),
               ),
             ),
             ),
             // Container(
             //   padding: EdgeInsets.only(left:20 ,top: 30),
             //   //  child: Image.asset('assets/fast.png',),
             //   child: Image(
             //     image: AssetImage(
             //       "assets/back.png",
             //     ),
             //   ),
             // ),
             Container(
               padding: EdgeInsets.only(left:260 ,top: 30),
               //  child: Image.asset('assets/fast.png',),
               child: Image(
                 image: AssetImage(
                   "assets/share.png",
                 ),
               ),
             ),
             Container(
               padding: EdgeInsets.only(left:300 ,top: 30),
               //  child: Image.asset('assets/fast.png',),
               child: Image(
                 image: AssetImage(
                   "assets/search2.png",
                 ),
               ),
             ),
           ],
         ),
       ),
       Padding(
         padding: const EdgeInsets.only(right: 120, top: 10),
         child: Container(
           width: 200,
           child: Text('Mayfield Bakery & Cafe',
           style: TextStyle(
             fontWeight: FontWeight.w600,
             fontSize: 24
           ),),
         ),
       ),
       Container(
         padding: EdgeInsets.only(right: 30),
         child: Image(
           image: AssetImage(
             "assets/T.png",
           ),
         ),
       ),
       Padding(
         padding: const EdgeInsets.only(left: 10),
         child: Row(
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
           ],
         ),
       ),
       Row(
         children: [
           Padding(
             padding: const EdgeInsets.only(left: 20,top: 10),
             child: Container(
              // padding: EdgeInsets.only(right: 30,top: 20),
               child: Image(
                   image: AssetImage(
                   "assets/delivery3.png",
                 ),
               ),
             ),
             ),
       SizedBox(width: 15,),
       Container(
         padding: EdgeInsets.only(top: 10),
         child: Text('Free',
           style:TextStyle(
             fontSize: 16,
             fontWeight: FontWeight.w300
           ),
         ),
       ),
           Padding(
             padding: const EdgeInsets.only(left: 30,),
             child: Container(
                padding: EdgeInsets.only(top: 10),
               child: Image(
                 image: AssetImage(
                   "assets/clock3.png",
                 ),
               ),
             ),
           ),
           SizedBox(width: 15,),
           Container(
               padding: EdgeInsets.only(top: 10),
             child: Text('25 ',
               style:TextStyle(
                   fontSize: 16,
                   fontWeight: FontWeight.w300
               ),
             ),
           ),
         ],
       ),
       Row(
         children: [
           Container(
             padding: EdgeInsets.only(left: 55,top: 0,bottom: 10),
            // padding: EdgeInsets.only(right: 200),
             child: Text('Delivery'),
           ),
       Container(
         padding: EdgeInsets.only(left: 45,top: 0,bottom: 10),
       //  padding: EdgeInsets.only(right: 0,left: 50),
         child: Text('Minutes'),
       ),
           Spacer(),
           Padding(
             padding: const EdgeInsets.only(bottom: 0),
             child: Container(
              padding: EdgeInsets.only(top: 0,right: 10),
               child: ElevatedButton(
                 onPressed: () {
                   Navigator.of(context).push(
                     MaterialPageRoute(
                         builder: (context) =>
                         const Featured()),
                   );
                 },
                 child: Text(
                   'Take away',
                   style: TextStyle(
                     fontSize: 14,
                     fontWeight: FontWeight.w600,
                     fontFamily: "Lato",
                     fontStyle: FontStyle.normal,
                     color: Color(0xFFEEA734),
                   ),
                 ),
                 style: ElevatedButton.styleFrom(
                   primary: Colors.white,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(6),
                   ),
                   side: BorderSide(
                     color: Color(0xFFEEA734), // Set the border color to black
                   ),
                 ),
               ),
             ),
           ),
         ],
       ),

       Container(
         padding: EdgeInsets.only(right: 190,),
         child: Text('Featured Items',
         style: TextStyle(
           fontWeight: FontWeight.w300,
           fontSize: 20
         ),),
       ),
       SingleChildScrollView(
         scrollDirection: Axis.horizontal,

         child: Row(

    children: List.generate(
    3,
    (index) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 14, top: 10,right: 10),
            child: Image.asset(
              imagePaths[index],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(

      child: Text(
      texts[index],),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(

              child: Image(
                image: AssetImage(
                  "assets/T3.png",
                ),
              ),
            ),
          )
        ],
      );
    }
    ),

    ),
         ),
       SingleChildScrollView(
         scrollDirection: Axis.horizontal,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children:
           List.generate(
             4,
    (index) {
               return Row(
              children: [
      //           Container(
      //          child: Text(
      //          texts2[index],),
      // ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => addorder(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 20,top: 20),
                    child: Container(

                     // padding: EdgeInsets.only(left:20 ,top: 30,right: 310),
                    //  alignment: Alignment.center,
      child: Text(
               texts2[index],
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 24,
        color: Color(0xFF010F07)
      ),),
                    ),
                  ),
                ),


              ],
               );
    }
           ),

         ),
       ),
       Container(
         padding: EdgeInsets.only(right: 200,top: 20),
         child: Text('Most Populars',
         style: TextStyle(
           fontSize: 20,
           fontWeight: FontWeight.w300,
         ),),
       ),
       Column(
         children:  List.generate(
    5,
    (index) {
      return Row(
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
              padding: EdgeInsets.only(left: 14, top: 10,right: 10,bottom: 20),
              alignment: Alignment.center,
      child: Image.asset(
           imagePaths2[index],
         ),
            ),
          ),
          // Container(
          //   padding: EdgeInsets.only(left: 14, top: 10,right: 10,bottom: 20),
          //   child: Image.asset(
          //     imagePaths2[index],
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

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
                  //  padding: EdgeInsets.only(left: 14, top: 10,right: 10,bottom: 20),
                    alignment: Alignment.center,
      child: Text(
          texts3[index],
         style: TextStyle(
           fontWeight: FontWeight.w300,
           fontSize: 18,
         ),),
                  ),
                ),
                // Container(
                //   child: Text(
                //     texts3[index],
                //   style: TextStyle(
                //     fontWeight: FontWeight.w300,
                //     fontSize: 18,
                //   ),),
                // ),
                SizedBox(height: 8,),
                Container(
                  width:180,


                  child: Text('Shortbread, chocolate turtle cookies, and red velvet.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),),
                ),
                Row(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage(
                          "assets/T3.png",
                        ),
                      ),

                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 85),
                      child: Container(

                        child: Text('AUD10',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFFEEA734)
                        ),),
                      ),
                    )
                  ],
                )


              ],
            ),
          ),

        ],

      );

    }
         ),

       )

     ],
   ),
 ),
    ),
    );

  }
}
