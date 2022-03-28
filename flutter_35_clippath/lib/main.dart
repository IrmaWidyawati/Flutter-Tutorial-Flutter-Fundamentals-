import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(appBar: AppBar(title: Text("Custom Clipper"),
      ),
      body: Center(
        child: ClipPath(
          clipper: MultipleRoundedPointsClipper(Sides.BOTTOM , heightOfPoint: 12),
          child: Image(
            width:500,
            image: AssetImage("assets/lake.jpg"),
          ),
        ),
      ),
      ),
      
    );
  }
}


// class MyClipper extends CustomClipper{
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.lineTo(0, size.height);
//     path.quadraticBezierTo(size.width/2, size.height/0.75, size.width, size.height);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override 
//   bool shouldReclip(CustomClipper oldClipper) => false; 
// }





