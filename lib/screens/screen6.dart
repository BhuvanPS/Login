import 'package:flutter/material.dart';

class Screen6 extends StatefulWidget {
  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  Color bgColor = Colors.blue;
  Color txtColor = Colors.white;
  int selectedContainer = 0;

  String getTitle() {
    // if (containerStatusTracker[0] == 1) {
    //   return '1';
    // } else if (containerStatusTracker[1] == 1) {
    //   return '2';
    // } else {
    //   return '3';
    // }
    return 'hi';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          selectedContainer != 0 ? Colors.blue : Colors.yellow,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'option1',
                        style: TextStyle(
                          color: selectedContainer != 0
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(
                      () {
                        // bgColor = Colors.yellow;
                        // txtColor = Colors.black;
                        selectedContainer = 0;
                      },
                    );
                  },
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          selectedContainer != 1 ? Colors.blue : Colors.yellow,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'option1',
                        style: TextStyle(
                          color: selectedContainer != 1
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(
                      () {
                        // bgColor = Colors.yellow;
                        // txtColor = Colors.black;
                        selectedContainer = 1;
                      },
                    );
                  },
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          selectedContainer != 2 ? Colors.blue : Colors.yellow,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'option1',
                        style: TextStyle(
                          color: selectedContainer != 2
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(
                      () {
                        // bgColor = Colors.yellow;
                        // txtColor = Colors.black;
                        selectedContainer = 2;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          Text(getTitle()),
        ],
      ),
    );
  }
}
