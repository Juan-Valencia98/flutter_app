import 'dart:math';

import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  final random = new Random();
  double _width = 50;
  double _height = 50;
  Color _color = Colors.orange;
  BorderRadius _border = BorderRadius.circular(9);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _border),
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle),
        onPressed: () {
          setState(() {
            _width = random.nextInt(300).toDouble();
            _height = random.nextInt(300).toDouble();
            _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255),
                random.nextInt(255), 1);
            _border = BorderRadius.circular(random.nextInt(100).toDouble());
          });
        },
      ),
    );
  }
}
