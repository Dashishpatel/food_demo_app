import 'package:flutter/material.dart';
import 'package:food_demo_app/addpayment.dart';
import 'package:food_demo_app/fserarch.dart';

class filters extends StatefulWidget {
  const filters({Key? key}) : super(key: key);

  @override
  State<filters> createState() => _filtersState();
}

class _filtersState extends State<filters> {
  int _selectedContainerIndex = -2;
  int _selectedContainerIndexd = -2;
  int _selectedContainerIndexd2 = -2;
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
                      builder: (context) => addpayment(),
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
                padding: EdgeInsets.only(left: 120),
                alignment: Alignment.center,
                child: Text(
                  'Filters    ',
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
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 20),
                    child: Container(

                      child: Text('Categories',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200,top: 20),
                    child: Container(

                      child: Text('Clear all',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),),
                    ),
                  ),



                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedContainerIndex =
                      0; // Replace with the respective container's index
                    });
                  },
                  child: Container(

                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 16, bottom: 16),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: _selectedContainerIndex == 0
                          ? Color(0xFFF8B64C)
                          : Color(0xFFDADBDC),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text("All"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedContainerIndex =
                      1; // Replace with the respective container's index
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 35, right: 35, top: 16, bottom: 16),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: _selectedContainerIndex == 1
                          ? Color(0xFFF8B64C)
                          : Color(0xFFDADBDC),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text("Brunch"),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedContainerIndex =
                      2; // Replace with the respective container's index
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 35, right: 35, top: 16, bottom: 16),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: _selectedContainerIndex == 2
                          ? Color(0xFFF8B64C)
                          : Color(0xFFDADBDC),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text("Dinner"),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedContainerIndex =
                      3; // Replace with the respective container's index
                    });
                  },
                  child: Container(

                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 16, bottom: 16),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: _selectedContainerIndex == 3
                          ? Color(0xFFF8B64C)
                          : Color(0xFFDADBDC),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text("Burgers"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedContainerIndex =
                      4; // Replace with the respective container's index
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 16, bottom: 16),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: _selectedContainerIndex == 4
                          ? Color(0xFFF8B64C)
                          : Color(0xFFDADBDC),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text("Chinese"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedContainerIndex =
                      5; // Replace with the respective container's index
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 16, bottom: 16),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: _selectedContainerIndex == 5
                          ? Color(0xFFF8B64C)
                          : Color(0xFFDADBDC),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text("Pizza"),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedContainerIndex =
                      6; // Replace with the respective container's index
                    });
                  },
                  child: Container(

                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 16, bottom: 16),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: _selectedContainerIndex == 6
                          ? Color(0xFFF8B64C)
                          : Color(0xFFDADBDC),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text("Salads"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedContainerIndex =
                      7; // Replace with the respective container's index
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 16, bottom: 16),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: _selectedContainerIndex == 7
                          ? Color(0xFFF8B64C)
                          : Color(0xFFDADBDC),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text("Soups"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedContainerIndex =
                      8; // Replace with the respective container's index
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 16, bottom: 16),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: _selectedContainerIndex == 8
                          ? Color(0xFFF8B64C)
                          : Color(0xFFDADBDC),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text("Breakfast"),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 20),
                  child: Container(

                    child: Text('Dietary',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200,top: 20),
                  child: Container(

                    child: Text('Clear all',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),),
                  ),
                ),



              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedContainerIndexd =
                      0; // Replace with the respective container's index
                    });
                  },
                  child: Container(

                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 16, bottom: 16),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: _selectedContainerIndexd == 0
                          ? Color(0xFFF8B64C)
                          : Color(0xFFDADBDC),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text("any"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedContainerIndexd =
                      1; // Replace with the respective container's index
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 16, bottom: 16),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: _selectedContainerIndexd == 1
                          ? Color(0xFFF8B64C)
                          : Color(0xFFDADBDC),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text("Vegetarian"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedContainerIndexd =
                      2; // Replace with the respective container's index
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 16, bottom: 16),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: _selectedContainerIndexd == 2
                          ? Color(0xFFF8B64C)
                          : Color(0xFFDADBDC),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text("Vegan"),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedContainerIndexd =
                      3; // Replace with the respective container's index
                    });
                  },
                  child: Container(

                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 16, bottom: 16),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: _selectedContainerIndexd == 3
                          ? Color(0xFFF8B64C)
                          : Color(0xFFDADBDC),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text("Gluten-Free"),
                  ),
                ),

              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 20),
                  child: Container(

                    child: Text('price range',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200,top: 20),
                  child: Container(

                    child: Text('Clear all',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),),
                  ),
                ),



              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
           child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedContainerIndexd2 =
                      0; // Replace with the respective container's index
                    });
                  },
                  child: Container(


                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 30, bottom: 30),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _selectedContainerIndexd2 == 0
                          ? Color(0xFFF8B64C)
                          : Color(0xFFDADBDC),
                      // borderRadius: BorderRadius.circular(1000),
                    ),
                    child: Text("\$"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedContainerIndexd2 =
                      1; // Replace with the respective container's index
                    });
                  },
                  child: Container(

                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 30, bottom: 30),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _selectedContainerIndexd2 == 1
                          ? Color(0xFFF8B64C)
                          : Color(0xFFDADBDC),
                      // borderRadius: BorderRadius.circular(3000),
                    ),
                    child: Text("\$\$"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedContainerIndexd2 =
                      2; // Replace with the respective container's index
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 30, bottom: 30),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _selectedContainerIndexd2 == 2
                          ? Color(0xFFF8B64C)
                          : Color(0xFFDADBDC),
                      // borderRadius: BorderRadius.circular(3000),
                    ),
                    child: Text("\$\$\$"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedContainerIndexd2 =
                      3; // Replace with the respective container's index
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 30, bottom: 30),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _selectedContainerIndexd2 == 3
                          ? Color(0xFFF8B64C)
                          : Color(0xFFDADBDC),
                      // borderRadius: BorderRadius.circular(3000),
                    ),
                    child: Text("\$\$\$\$"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedContainerIndexd2 =
                      4; // Replace with the respective container's index
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 30, bottom: 30),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _selectedContainerIndexd2 == 4
                          ? Color(0xFFF8B64C)
                          : Color(0xFFDADBDC),
                      // borderRadius: BorderRadius.circular(3000),
                    ),
                    child: Text("\$\$\$\$\$"),
                  ),
                ),
              ],
            ),
            ),
            SizedBox(height: 50,),
            Container(
              padding: EdgeInsets.only(right: 10,left: 10,),
              width: 349,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>  fserarch(),
                    ),
                  );
                },
                child: Text(textAlign: TextAlign.center, 'Apply filters'),
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
