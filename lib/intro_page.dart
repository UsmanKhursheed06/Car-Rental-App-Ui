import 'package:car_rental/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroPage(),
    );
  }
}

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/intro_back.jpg'), // Update the image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content overlay
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: Text(
                  'Find Best Dream Car',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Text(
                  'Find your dream car on rent, with good price and quality.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                decoration: BoxDecoration(gradient: LinearGradient(colors:[ Colors.black26,Colors.black],begin: Alignment.topCenter,end: Alignment.bottomCenter),borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // IconButton(
                      //   icon: Icon(Icons.arrow_back, color: Colors.white),
                      //   onPressed: () {
                      //     // Previous button action
                      //   },
                      // ),
                      ClipOval(
                        child: Container(
                          color: Colors.transparent,
                          child: IconButton(
                            icon: Icon(Icons.power_settings_new, color: Colors.orange),iconSize: 30,
                            onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>HomePage()));}
                          ),
                        ),
                      ),
                      // IconButton(
                      //   icon: Icon(Icons.arrow_forward, color: Colors.white),
                      //   onPressed: () {
                      //     // Next button action
                      //   },
                      // ),
                    ],
                  ),
                ),
              
            ],
          ),
        ],
      ),
    );
  }
}

// class BottomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..shader = LinearGradient(
//         colors: [Colors.black.withOpacity(0.7), Colors.transparent],
//         begin: Alignment.bottomCenter,
//         end: Alignment.topCenter,
//       ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

//     final path = Path()
//       ..moveTo(0, 0)
//       ..lineTo(size.width * 0.35, 0)
//       ..lineTo(size.width * 0.4, size.height)
//       ..lineTo(size.width * 0.6, size.height)
//       ..lineTo(size.width * 0.65, 0)
//       ..lineTo(size.width, 0)
//       ..lineTo(size.width, size.height)
//       ..lineTo(0, size.height)
//       ..close();

//     canvas.drawPath(path, paint);

//     final shadowPaint = Paint()
//       ..color = Colors.black.withOpacity(0.5)
//       ..maskFilter = MaskFilter.blur(BlurStyle.normal, 10.0);

//     canvas.drawShadow(path, Colors.black, 10.0, true);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }
