import 'package:flutter/material.dart';
import 'package:sample_screens/screens/screen2.dart';

class Shaper extends StatefulWidget {
  const Shaper({Key? key}) : super(key: key);

  @override
  State<Shaper> createState() => _ShaperState();
}

class _ShaperState extends State<Shaper> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  bool isPlaying = true;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void toggleIcon() => setState(() {
        isPlaying = !isPlaying;
        isPlaying ? controller.forward() : controller.reverse();
      });
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Screen2(),
      ),
    );
  }

  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 80,
              color: Colors.black,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: NBCustomPainter(),
                  ),
                  Center(
                    heightFactor: 0.6,
                    child: FloatingActionButton(
                      onPressed: () {
                        _navigateToNextScreen(context);
                      },
                      backgroundColor: Colors.orange,
                      child: Icon(
                        Icons.add,
                      ),
                      elevation: 1,
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: AnimatedIcon(
                              icon: AnimatedIcons.home_menu,
                              progress: controller),
                          onPressed: toggleIcon,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.home_filled),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_alert),
                        ),
                        Container(
                          width: size.width * 0.15,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_shopping_cart),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_shopping_cart),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.face),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);
    path.quadraticBezierTo(size.width * 0.2, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.4, 0, size.width * 0.4, 20);
    path.arcToPoint(Offset(size.width * 0.6, 20),
        radius: Radius.circular(10), clockwise: false);
    path.quadraticBezierTo(size.width * 0.6, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.8, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    // canvas.drawShadow(path, Colors.lightBlue, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
