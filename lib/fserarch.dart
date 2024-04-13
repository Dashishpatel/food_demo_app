import 'package:flutter/material.dart';

class fserarch extends StatefulWidget {
  const fserarch({Key? key}) : super(key: key);

  @override
  State<fserarch> createState() => _fserarchState();
}

class _fserarchState extends State<fserarch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              padding: EdgeInsets.only(top: 50,left: 15),
              child: Text('Search',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Container(

                width: 323,
                height: 48,
                color: Color(0xFFF5F7F8),
                child: TextFormField(
                  decoration: InputDecoration(

                    hintText: 'Search on foodly',
                    prefixIcon:  Image(
                      image: AssetImage(
                        "assets/search.png",
                      ),
                    ),

                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),
            Container(padding: EdgeInsets.only(top: 40,left: 20),
              child: Text('Top Restaurants',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16
              ),),
            )
          ],
        ),
      ),
    );
  }
}

//tum jaaan jaan kehke meri jaan ke gaye
