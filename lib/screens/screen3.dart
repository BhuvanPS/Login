import 'dart:ui';

import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  List<Widget> getRowChildren() {
    List<Widget> rowChildren = [];
    for (int i = 0; i < 4; i++) {
      rowChildren.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 15, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.blue,
                  height: 50,
                  width: 50,
                ),
              ),
              // // Padding(
              // //   padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              // //   child: Container(
              // //     color: Colors.blue,
              // //     height: 50,
              // //     width: 50,
              // //   ),
              // ),
            ],
          ),
        ),
      );
    }
    return rowChildren;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/abc.jpg'),
                  ),
                ),
                child: Text(
                  '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
              onTap: () async {
                await showDialog(
                  context: context,
                  builder: (_) => new AlertDialog(
                    title: new Text(
                      'About',
                      style: TextStyle(fontFamily: "Smash"),
                    ),
                    content: new Text(
                      'This is a placeholder. This is a placeholder. This is a placeholder. This is a placeholder.',
                      style: TextStyle(fontFamily: "Smash"),
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Warehouse"),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.blue,
              ))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0, top: 15, right: 0),
            child: Container(
              height: 60,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Welcome and good day MR.John and Doe',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.blue,
                      ))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Container(
              color: Colors.blue,
              height: 75,
              width: 340,
              child: Center(
                child: Text(
                  'Alerts',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: Colors.blue,
                    height: 75,
                    width: 130,
                    child: Center(
                      child: Text(
                        'Detailed Report',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 75,
                    width: 130,
                    child: Center(
                      child: Text(
                        'Warehouse Profile',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: getRowChildren(),
          ),
          Row(
            children: getRowChildren(),
          ),
        ],
      ),
      backgroundColor: Colors.lightGreenAccent,
    );
  }
}
