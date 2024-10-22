
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Row Example 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Flutter Row Example 2'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flutter Row Example 2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              RowExample(
                mainAxisAlignment: MainAxisAlignment.start,
                label: 'MainAxisAlignment.start',
              ),
              SizedBox(height: 20),
              RowExample(
                mainAxisAlignment: MainAxisAlignment.center,
                label: 'MainAxisAlignment.center',
              ),
              SizedBox(height: 20),
              RowExample(
                mainAxisAlignment: MainAxisAlignment.end,
                label: 'MainAxisAlignment.end',
              ),
              SizedBox(height: 20),
              Text(
                'credit: codesundar.com',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RowExample extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final String label;

  RowExample({required this.mainAxisAlignment, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 400,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Row() Example',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 150,
            height: 300,
            color: Colors.grey[300],
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'CrossAxisAlignment.center',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: mainAxisAlignment,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.red,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.green,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
