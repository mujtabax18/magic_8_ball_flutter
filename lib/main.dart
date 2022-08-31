import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          backgroundColor: Colors.teal.shade900,
          title: Text('Ask Me Anything'),
        ),
        body: MyApp(),
      ),

),
);

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int imageno=1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: TextButton(
              onPressed: (){
                setState(() {
                  imageno = Random().nextInt(4) + 1;
                });
              },
              child: Image.asset('images/ball$imageno.png')
          )
          ),
        ],
      ),
    );
  }
}
