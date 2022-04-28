import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  void prrint() {
    print("vikram");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("nWarehouse"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 15),
        children: [
          Container(
            color: Colors.blueGrey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "SlotA",
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  children: [
                    Text(
                      "Refresh",
                    ),
                    IconButton(
                        onPressed: prrint,
                        icon: Icon(
                          Icons.refresh,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Container(
              color: Colors.white,
              height: 35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Quality",
                  ),
                  Text(
                    "Good",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(35.0),
                child: Container(
                  padding: EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffff0000),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.blueAccent,
                  ),
                  child: Center(
                    child: Text(
                      "Gas Sensor",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(35.0),
                child: Container(
                  padding: EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffff0000),
                      width: 3,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Temp and Hum",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(35.0),
                child: Container(
                  padding: EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffff0000),
                      width: 3,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "CO2 Levels",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(35.0),
                child: Container(
                  padding: EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffff0000),
                      width: 3,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Gas Sensor",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(35.0),
                child: Container(
                  padding: EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffff0000),
                      width: 3,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Temp and Hum",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(35.0),
                child: Container(
                  padding: EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffff0000),
                      width: 3,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "CO2 Levels",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
