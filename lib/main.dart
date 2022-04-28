import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_screens/screens/shapenContainer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: CustCont(),
      debugShowCheckedModeBanner: false,
    );
  }
}
