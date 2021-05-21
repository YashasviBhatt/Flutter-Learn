import 'package:flutter/material.dart';

void main() {
  double dimension = 200;
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[400],
        appBar: AppBar(
          backgroundColor: Colors.orange[400],
          title: Text(
            'I am Indian',
            style: TextStyle(color: Colors.blue[800]),
          ),
        ),
        body: Center(
          child: Column(
            // "Column" Widget is used to add multiple widgets vertically with the help of "Expanded" Widget
            children: <Widget>[
              Expanded(
                // Sub-Widget to provide a starting gap
                child: Text(
                  ' ',
                ),
              ),
              Expanded(
                // Sub-Widget to render Image from Internet
                child: Image(
                  image: NetworkImage(
                      'https://st.depositphotos.com/1820591/1447/v/950/depositphotos_14478983-stock-illustration-creative-indian-flag-design.jpg'),
                  height: dimension,
                  width: dimension,
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                // Sub-Widget to title the Image rendered Internet above
                child: Text(
                  'The Above Image is rendered from Internet',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Expanded(
                // Sub-Widget to render Image from Directory
                child: Image(
                  image: AssetImage('images/tricolor.jpg'),
                  height: dimension,
                  width: dimension,
                ),
              ),
              Expanded(
                child: Text(
                  'The Above Image is rendered from System\'s Directory',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
