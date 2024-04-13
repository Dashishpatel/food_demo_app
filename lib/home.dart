
import 'package:flutter/material.dart';
import 'package:food_demo_app/food.dart';
import 'package:food_demo_app/orders.dart';
import 'package:food_demo_app/profile.dart';
import 'package:food_demo_app/search.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    food(),
    search(),
    orders(),
    profile(),

    SizedBox(
      height: 200,
      width: 200,
      child: Container(),
    )
  ];



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar:Container(


        height: 80,
        width: 375,
        decoration: BoxDecoration(
            borderRadius:BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(0),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(60),
            )
        ),



        child: BottomNavigationBar(





          items: const <BottomNavigationBarItem>[

            BottomNavigationBarItem(
              icon:

              ImageIcon(AssetImage('assets/food.png'),

                //  color: Color(0xFF9A9A9A),

              ),


              label: 'Home',
            ),



            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/search.png'),
                // color: Color(0xFF9A9A9A),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(

              icon: ImageIcon(AssetImage('assets/orders.png'),
                // color: Color(0xFF9A9A9A),
              ),
              label: 'Orders',

            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/profile.png'),
                // color: Color(0xFF9A9A9A),
              ),
              label: 'Profile',
            ),


          ],

          currentIndex: _selectedIndex,
          iconSize: 50,

          selectedItemColor: Color(0xFFEEA734),
          unselectedItemColor: Color(0xFF9A9A9A),



          onTap: _onItemTapped,

        ),
      ),
    );
  }


}