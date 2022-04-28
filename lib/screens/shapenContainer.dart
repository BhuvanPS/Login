import 'package:flutter/material.dart';

class CustCont extends StatefulWidget {
  const CustCont({Key? key}) : super(key: key);

  @override
  State<CustCont> createState() => _CustContState();
}

class _CustContState extends State<CustCont> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/i3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  width: size.width,
                  height: size.height * 0.6,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 34,
                        child: Transform.rotate(
                          angle: 5.92,
                          child: Text(
                            "Warehouse",
                            style: TextStyle(
                              fontSize: 55,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFFFF6B6C),
                            ),
                          ),
                        ),
                      ),
                      CustomPaint(
                        size: Size(size.width, size.height * 0.6),
                        painter: ContainerCustomPainter(),
                      ),
                      Center(
                        child: Container(
                          width: size.width * 0.7,
                          height: size.height * 0.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize: 38, color: Colors.white),
                                  ),
                                  // SizedBox(
                                  //   width: 5,
                                  // )
                                ],
                              ),
                              TextFormField(
                                style: TextStyle(color: Colors.white),
                                cursorColor: Colors.white,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide: BorderSide(
                                          color: Colors.white70, width: 1.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2.0),
                                    ),
                                    labelText: "Username",
                                    labelStyle:
                                        TextStyle(color: Colors.white70),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),

                                //onSaved: () {},
                              ),
                              TextFormField(
                                style: TextStyle(color: Colors.white),
                                cursorColor: Colors.white,
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: BorderSide(
                                        color: Colors.white70, width: 1.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2.0),
                                  ),
                                  labelStyle: TextStyle(color: Colors.white70),
                                ),
                              ),
                              // SizedBox(
                              //   height: 3,
                              // ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   height: 10,
                              // ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(9)),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                    ),
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 12.0),
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            fontSize: 21,
                                            color: Color(0xFFFF6B6C)),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Color(0xFFFF6B6C)
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(size.width, size.height * 0);
    path.lineTo(size.width, size.height * 0.84);
    path.quadraticBezierTo(
        size.width, size.height, size.width * 0.92, size.height);
    path.lineTo(size.width * 0.1, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height * 0.9);
    path.lineTo(0, size.height * 0.37);
    path.quadraticBezierTo(
        0, size.height * 0.265, size.width * 0.2, size.height * 0.22);
    path.lineTo(size.width * 0.87, size.height * 0.025);
    path.quadraticBezierTo(
        size.width, size.height * 0, size.width, size.height * 0.25);
    // path.lineTo(size.width, size.height * 0.1);
    //
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
