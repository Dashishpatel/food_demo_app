import 'package:flutter/material.dart';
import 'package:food_demo_app/singlere.dart';
import 'package:food_demo_app/yorders.dart';

class addorder extends StatefulWidget {
  const addorder({Key? key}) : super(key: key);

  @override
  State<addorder> createState() => _addorderState();
}

class _addorderState extends State<addorder> {
  @override
  Widget build(BuildContext context) {
    int? _selectedOption = 1;



    List<String> _options = [
      'Chocolate Chip',
      'Cookies and Cream',
      'Funfetti',
      'M and M',
      'Red Velvet',
      'Peanut Butter',
      'Snickerdoodle',
      'White Chocolate Macadamia',




    ];
    return DefaultTabController(length: 3,
        child: Scaffold(
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
                               builder: (context) => singlere(),
                             ),
                           );
                         },
                         child: Container(
                           padding: EdgeInsets.only(left:20 ,top: 30,right: 310),
                           alignment: Alignment.center,
                           child: Image(
                             image: AssetImage(
                               "assets/close2.png",
                             ),
                           ),
                         ),
                       ),

                     ],
                   ),
                 ),
                 Container(
                   padding: EdgeInsets.only(right: 130,top: 20),
                   child: Text('Cookie Sandwich',
                   style: TextStyle(
                     fontSize: 24,
                     fontWeight: FontWeight.w600,
                   ),),

                 ),
                 SizedBox(height: 10,),
                 Container(

                   width: 320,
                   //padding: EdgeInsets.only(right: 10,top: 20),
                   child: Text('Shortbread, chocolate turtle cookies, and red velvet. 8 ounces cream cheese, softened.',
                     style: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.w400,
                     ),),

                 ),
                 Container(
                   padding: EdgeInsets.only(right: 30,top: 10),
                   child: Image(
                     image: AssetImage(
                       "assets/T.png",
                     ),
                   ),

                 ),
                 Row(
                   children: [
                     Container(
                       padding: EdgeInsets.only(left: 20,top: 25),
                       child: Text('Choice of top Cookie',
                       style: TextStyle(
                         fontWeight: FontWeight.w300,
                         fontSize: 20,
                       ),),
                     ),
                     Spacer(),
                     Container(
                       padding: EdgeInsets.only(top: 0,right: 5),
                       width: 100,
                       height: 32,
                       child: ElevatedButton(
                         onPressed: () {
                           Navigator.of(context).push(
                             MaterialPageRoute(
                               builder: (context) =>  yorders(),
                             ),
                           );
                         },
                         child: Text(textAlign: TextAlign.center, 'Required'),
                         /* style: TextStyle(
                                          height: 19,
                                          fontFamily: 'Raleway',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.white,),), */

                         style: ElevatedButton.styleFrom(
                           backgroundColor: Color(0xFFF8B64C),
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(8),
                           ),
                         ),
                       ),
                     ),
                   ],

                 ),
                 SizedBox(height: 20,),




                 Column(
                     children: _options
            .asMap()
            .map(
              (index, option) => MapEntry(
            index,

            RadioListTile(
              fillColor:   MaterialStateColor.resolveWith((states) => Color(0xFFEEA734)),
              hoverColor: MaterialStateColor.resolveWith((states) => Colors.green),

              value: _selectedOption,
              groupValue: _selectedOption,
              onChanged: (value) {

                setState(() {
                  _selectedOption = value ;
                });
              },
              toggleable: true,

            ),



          ),
        )
            .values
            .toList(),


                 ),


               ],
             ),
           ),
        ),
    );
  }
}














//
// import 'package:flutter/material.dart';
//
// class addorder extends StatefulWidget {
//   @override
//   _addorderState createState() => _addorderState();
// }
//
// class _addorderState extends State<addorder> {
//   // Create a group value for the radio buttons.
//   // This value will be updated when the user selects a different option.
//   int _selectedOption = 0;
//
//   // Create a list of options for the radio buttons.
//   List<String> _options = ['Option 1', 'Option 2', 'Option 3'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body:
//           SingleChildScrollView(
//
//
//     child:  Column(
//
//
//         children: _options
//             .asMap()
//             .map(
//               (index, option) => MapEntry(
//             index,
//             RadioListTile(
//               value: index,
//               groupValue: _selectedOption,
//               onChanged: (value) {
//                 setState(() {
//                   _selectedOption = value!;
//                 });
//               },
//               title: Text(option),
//             ),
//           ),
//         )
//             .values
//             .toList(),
//       ),
//     ),
//     );
//   }
// }






// bate zaruri hai tera milna bhi zaruri




