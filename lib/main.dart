import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNav(),
    );
  }
}

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        size: Size(MediaQuery.of(context).size.width, 50), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: RPSCustomPainter(),
    ),
    );
  }
}


class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(size.width*0.0009750,size.height*0.9881000);
    path0.lineTo(size.width*0.0013625,size.height*0.2461500);
    path0.quadraticBezierTo(size.width*0.2328406,size.height*0.0615375,size.width*0.3100000,0);
    path0.cubicTo(size.width*0.3739125,size.height*0.0521000,size.width*0.3751250,size.height*0.1556000,size.width*0.3752625,size.height*0.2455500);
    path0.cubicTo(size.width*0.3759500,size.height*0.9010000,size.width*0.6255375,size.height*0.9015000,size.width*0.6237875,size.height*0.2437000);
    path0.cubicTo(size.width*0.6264000,size.height*0.1496500,size.width*0.6275875,size.height*0.0557500,size.width*0.6850000,size.height*0.0100000);
    path0.quadraticBezierTo(size.width*0.7636938,size.height*0.0675375,size.width*0.9997750,size.height*0.2401500);
    path0.lineTo(size.width*0.9987500,size.height*0.9950000);

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

