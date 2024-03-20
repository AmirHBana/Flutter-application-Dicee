import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 226, 37, 23),
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Color.fromARGB(255, 235, 78, 67),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  void ChangeDiceFace() {
    
  }

  @override
  State<DicePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightdicenumber = Random().nextInt(6) + 1;
                    leftdicenumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                image: AssetImage('images/dice$leftdicenumber.png')
                ),
              ),
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightdicenumber = Random().nextInt(6) + 1;
                    leftdicenumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                image: AssetImage('images/dice$rightdicenumber.png')
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}



