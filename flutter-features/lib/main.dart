import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Flutter_Features());
}

class Flutter_Features extends StatelessWidget {
  const Flutter_Features({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.teal,
                margin: EdgeInsets.all(10), // margin for all side will be same
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 30,
                ), // margin from top-bottom and left-right will be the mentioned pixels
                child: Text(
                  'First Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                color: Colors.teal,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(
                  left: 20,
                ), // margin from left will be mentioned pixels
                child: Text(
                  'Second Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                color: Colors.teal,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                padding: EdgeInsets.fromLTRB(
                  5,
                  20,
                  0,
                  20,
                ), // margin for all side will be mentioned pixels
                child: FractionallySizedBox(
                  widthFactor: 0.6,
                  child: Text(
                    'Third Container',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment
                .start, // manually align content on the basis of column width/row height
          ),
        ),
      ),
      debugShowCheckedModeBanner:
          false, // to remove the debug banner in the dart application
    );
  }
}
