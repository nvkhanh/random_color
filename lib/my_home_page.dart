import 'dart:math';
import 'package:flutter/material.dart';

/// HomePage widget class
class MyHomePage extends StatefulWidget {
  /// Home page contractor
  const MyHomePage({
    required this.title,
    super.key,
  });

  /// The title of home page screen
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color? _color;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _color = _generateRandomColor();
  }

  Color _generateRandomColor() {
    return Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }

  void _changeColor() {
    setState(() {
      _color = _generateRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: _changeColor,
        child: Container(
          color: _color,
          width: double.infinity,
          height: double.infinity,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Hello there',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
