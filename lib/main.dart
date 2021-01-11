import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Test(),
    );
  }
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: CustomProgressIndicator(
          percent: 50,
          backColor: Colors.deepOrange,
          frontColor: Colors.blue,
          freeSize: Colors.grey,
        ),
      ),
    );
  }
}

class CustomProgressIndicator extends StatelessWidget {
  double percent = 0;
  final Color frontColor;
  final Color backColor;
  final Color freeSize;

  CustomProgressIndicator(
      {@required this.percent,
      @required this.freeSize,
      @required this.frontColor,
      @required this.backColor});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        return Center(
          child: Stack(
            children: [
              Row(
                children: [
                  Container(
                    height: size.maxHeight,
                    width: percent * size.maxWidth / 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        colors: [
                          frontColor,
                          backColor,
                        ], // red to yellow
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    color: freeSize,
                  ))
                ],
              ),
              Container(
                height: size.maxHeight,
                width: size.maxWidth,
                child: Row(
                  children: [
                    Expanded(child: Container()),
                    Container(
                      width: 10,
                      color: Colors.white,
                    ),
                    Expanded(child: Container()),
                    Container(
                      width: 10,
                      color: Colors.white,
                    ),
                    Expanded(child: Container()),
                    Container(
                      width: 10,
                      color: Colors.white,
                    ),
                    Expanded(child: Container()),
                    Container(
                      width: 10,
                      color: Colors.white,
                    ),
                    Expanded(child: Container()),
                    Container(
                      width: 10,
                      color: Colors.white,
                    ),
                    Expanded(child: Container()),
                    Container(
                      width: 10,
                      color: Colors.white,
                    ),
                    Expanded(child: Container()),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
