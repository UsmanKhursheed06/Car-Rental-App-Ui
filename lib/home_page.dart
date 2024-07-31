import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff283048), Color(0xff859398)],
            stops: [0, 1],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(right: 10, top: 10),
              margin: EdgeInsets.all(10),
              height: 100,
              width: double.infinity,
              color: Colors.transparent,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lets Explore Your',
                        style: TextStyle(
                          color: Color.fromARGB(177, 255, 255,
                              255), // Change text color as needed
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'Prefrences?',
                        style: TextStyle(
                            color: Colors.white, // Change text color as needed
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: Color.fromARGB(65, 253, 253, 253),
                    ), // Using an Icon to demonstrate
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 33, 32, 32),
                        shadowColor: Colors.white,
                        elevation: 40,
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(10)),
                  )
                  // ElevatedButton.icon(
                  //   onPressed: () {},
                  //   icon: Icon(Icons.person,color: const Color.fromARGB(71, 255, 255, 255),size:30,),
                  //   label: Text('Profile'),
                  //   style: ElevatedButton.styleFrom(
                  //       shadowColor: Colors.white,
                  //       elevation: 40,

                  //       backgroundColor: Color.fromARGB(255, 19, 22, 31)),
                  // )
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(cursorColor: Colors.white,decoration: InputDecoration(border: OutlineInputBorder(),prefixIcon:Icon(Icons.search),hintText: 'Search' ,fillColor: Colors.black),),
            ),

            // const  Padding(
            //   padding: const EdgeInsets.only(top: 16,left: 16), // Adjust padding as needed
            //   child: Text(
            //     'Lets Explore Your',
            //     style: TextStyle(
            //       color: Color.fromARGB(177, 255, 255, 255), // Change text color as needed
            //       fontSize: 24, // Adjust font size as needed
            //     ),
            //   ),
            // ),

            // Text('Prefrence?'),

            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
