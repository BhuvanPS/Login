import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_screens/screens/screen1.dart';
import 'package:sample_screens/screens/screen2.dart';
import 'package:sample_screens/screens/screen7.dart';

import './screen5.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: 0),
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xff0179E3),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(
                  40,
                ),
              ),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 25, horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.ac_unit_sharp,
                          size: 30,
                          color: Colors.white54,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Text(
                    'Find your dream in',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'TamilNadu',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: TextField(
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white70,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(),
                          child: Icon(
                            Icons.search,
                            color: Colors.white70,
                            size: 20,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        fillColor: Color(0xff268DE8),
                        contentPadding: EdgeInsets.zero,
                        hintText: ' Location',
                        hintStyle: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                      onTap: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 30, 18, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Tourist Spots ',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '🔥',
                    ),
                  ],
                ),
                Text(
                  'More',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 5,
                ),
                Screen5(
                  location: 'TamilNadu',
                  rating: '4.7',
                  imgPath: 'assets/images/i1.jpg',
                  event: 'OOTY',
                  screenLinker: Screen7(
                    description:
                        'Ooty (short for Udhagamandalam) is a resort town in the Western Ghats mountains, in southern India\'s\ Tamil Nadu state. Founded as a British Raj summer resort, it retains a working steam railway line. Other reminders of its colonial past include Stone House, a 19th-century residence,'
                        ' and the circa-1829 St. Stephen\'s\ Church. Its 55-acre Government Botanical Garden lies on the slopes of Doddabetta Peak',
                    info: 'Ooty',
                    imgPath: 'assets/images/i1.jpg',
                  ),
                ),
                Screen5(
                  location: 'Coimbatore',
                  rating: '3.7',
                  imgPath: 'assets/images/i1.jpg',
                  event: 'Parasliding',
                  screenLinker: Screen1(),
                ),
                Screen5(
                  location: 'Pondicherry',
                  rating: '5',
                  imgPath: 'assets/images/i1.jpg',
                  event: 'Beer',
                  screenLinker: Screen2(),
                ),
                Screen5(
                  location: 'Tirupur',
                  rating: '4.7',
                  imgPath: 'assets/images/i1.jpg',
                  event: 'Parasliding',
                  screenLinker: Screen1(),
                ),
                Screen5(
                  location: 'Tirupur',
                  rating: '4.7',
                  imgPath: 'assets/images/i1.jpg',
                  event: 'Parasliding',
                  screenLinker: Screen2(),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 30, 18, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Temples ',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '🛐',
                    ),
                  ],
                ),
                Text(
                  'More',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 5,
                ),
                Screen5(
                  location: 'Madurai',
                  rating: '4.7',
                  imgPath: 'assets/images/i2.jpg',
                  event: 'Meenakshi Amman Temple',
                  screenLinker: Screen7(
                    info: 'Meenakshi Amman Temple',
                    imgPath: 'assets/images/i2.jpg',
                    description:
                        'Arulmigu Meenakshi Amman Temple, also known as Meenakshi Sundareshwarar Temple, is a historic Hindu temple located on the southern bank of the Vaigai River in the temple city of Madurai, '
                        'Tamil Nadu, India. It is dedicated to the goddess Meenakshi, a form of Parvati, and her consort, Sundareshwarar, a form of Shiva.',
                  ),
                ),
                Screen5(
                  location: 'Coimbatore',
                  rating: '3.7',
                  imgPath: 'assets/images/i1.jpg',
                  event: 'Parasliding',
                  screenLinker: Screen1(),
                ),
                Screen5(
                  location: 'Pondicherry',
                  rating: '5',
                  imgPath: 'assets/images/i1.jpg',
                  event: 'Beer',
                  screenLinker: Screen2(),
                ),
                Screen5(
                  location: 'Tirupur',
                  rating: '4.7',
                  imgPath: 'assets/images/i1.jpg',
                  event: 'Parasliding',
                  screenLinker: Screen1(),
                ),
                Screen5(
                  location: 'Tirupur',
                  rating: '4.7',
                  imgPath: 'assets/images/i1.jpg',
                  event: 'Parasliding',
                  screenLinker: Screen2(),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 30, 18, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Major Cities ',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '🔥',
                    ),
                  ],
                ),
                Text(
                  'More',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 5,
                ),
                Screen5(
                  location: 'TamilNadu',
                  rating: '4.7',
                  imgPath: 'assets/images/i1.jpg',
                  event: 'OOTY',
                  screenLinker: Screen1(),
                ),
                Screen5(
                  location: 'Coimbatore',
                  rating: '3.7',
                  imgPath: 'assets/images/i1.jpg',
                  event: 'Parasliding',
                  screenLinker: Screen1(),
                ),
                Screen5(
                  location: 'Pondicherry',
                  rating: '5',
                  imgPath: 'assets/images/i1.jpg',
                  event: 'Beer',
                  screenLinker: Screen2(),
                ),
                Screen5(
                  location: 'Tirupur',
                  rating: '4.7',
                  imgPath: 'assets/images/i1.jpg',
                  event: 'Parasliding',
                  screenLinker: Screen1(),
                ),
                Screen5(
                  location: 'Tirupur',
                  rating: '4.7',
                  imgPath: 'assets/images/i1.jpg',
                  event: 'Parasliding',
                  screenLinker: Screen2(),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 30, 18, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Popular Activities ',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '🔥',
                    ),
                  ],
                ),
                Text(
                  'More',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 5,
                ),
                Screen5(
                  location: 'TamilNadu',
                  rating: '4.7',
                  imgPath: 'assets/images/i1.jpg',
                  event: 'OOTY',
                  screenLinker: Screen1(),
                ),
                Screen5(
                  location: 'Coimbatore',
                  rating: '3.7',
                  imgPath: 'assets/images/i1.jpg',
                  event: 'Parasliding',
                  screenLinker: Screen1(),
                ),
                Screen5(
                  location: 'Pondicherry',
                  rating: '5',
                  imgPath: 'assets/images/i1.jpg',
                  event: 'Beer',
                  screenLinker: Screen2(),
                ),
                Screen5(
                  location: 'Tirupur',
                  rating: '4.7',
                  imgPath: 'assets/images/i1.jpg',
                  event: 'Parasliding',
                  screenLinker: Screen1(),
                ),
                Screen5(
                  location: 'Tirupur',
                  rating: '4.7',
                  imgPath: 'assets/images/i1.jpg',
                  event: 'Parasliding',
                  screenLinker: Screen2(),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app_outlined),
            label: '',
          ),
        ],
      ),
    );
  }
}
