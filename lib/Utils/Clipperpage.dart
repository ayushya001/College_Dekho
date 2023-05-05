import 'package:flutter/material.dart';


class ClipperPage extends StatelessWidget {
  const ClipperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.4,

          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
               Radius.circular(MediaQuery.of(context).size.height * 0.05),
           ),
          ),
          child: Stack(
            children: [

              CustomPaint(
                size: Size(
                  MediaQuery.of(context).size.width,
                  (MediaQuery.of(context).size.height * 0.4),
                ),
                painter:  CustomPainterdesign(),
              ),
              Positioned(right: 0.0,
                  bottom: 0.0,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text("ayush",
                      style: TextStyle(
                          color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold

                      ),),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomPainterdesign extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.white..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(size.width, size.height*0.80);

    path.quadraticBezierTo(
      size.width*0.95,
      size.height*0.88,
      size.width*0.86,
      size.height*0.90);
    path.lineTo(size.width*0.60, size.height*0.90);
    path.quadraticBezierTo(
        size.width*0.58,
        size.height*0.90,
        size.width*0.55,
        size.height*0.92);
    path.quadraticBezierTo(
        size.width*0.55,
        size.height*0.96,
        size.width*0.49,
        size.height);

    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
