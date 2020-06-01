import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(), // 앱이 실행되면 가장먼저 보여지는 위젯
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('CLO Todo'),
      centerTitle: true,
      backgroundColor: Colors.redAccent,
      elevation: 0.0,
      ),
      body: Center(
        child: Column(
         //   mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
            Text('Hello'),
            Text('Hello'),
            Text('Hello'),
            ],
          ),
      ), 
        
    );
  }
}