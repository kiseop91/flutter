import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
      title: Text('CLO Todo'),
      centerTitle: true,
      backgroundColor: Colors.amber[700],
      elevation: 0.0,
      ),
      body: Padding(padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.white24,
              backgroundImage: AssetImage('assets/Torch.gif'),
              radius: 60.0,
            ),
          ),
          Divider(
            height: 60.0,
            color: Colors.grey[850],
            thickness: 0.5,
            endIndent: 30,
          ),
          Text('NAME',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 2.0, 
          ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text('Joseph',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 2.0, 
            fontSize: 28.0,
            fontWeight: FontWeight.bold
          ),
          ),

          SizedBox( 
            height: 30.0,
          ),

          Text('GOAL',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 2.0, 
          ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text('Todo Application',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 2.0, 
            fontSize: 15.0,
            fontWeight: FontWeight.bold
          ),
          ),

          SizedBox( 
            height: 30.0,
          ),

          Row( 
            children: <Widget>[
              Icon(Icons.check_circle_outline),
              
              SizedBox( 
                width: 10.0,
              ),

              Text('Exercise in the evening',
              style: TextStyle(
                fontSize: 16.0,
                letterSpacing: 1.0
              ),
              ),
            ],
          ),

            Row( 
            children: <Widget>[
              Icon(Icons.check_circle_outline),
              
              SizedBox( 
                width: 10.0,
              ),

              Text('Coding an hour a day',
              style: TextStyle(
                fontSize: 16.0,
                letterSpacing: 1.0
              ),
              ),
            ],
          ),

            Row( 
            children: <Widget>[
              Icon(Icons.check_circle_outline),
              
              SizedBox( 
                width: 10.0,
              ),

              Text('Meditate for an hour',
              style: TextStyle(
                fontSize: 16.0,
                letterSpacing: 1.0
              ),
              ),
            ],
          ),

          Center(
            child:  CircleAvatar( 
              backgroundImage: AssetImage('assets/bears.png'),
              backgroundColor: Colors.transparent,
              radius: 70,
            ),
          ),

        ]
        ,)
      ),
    );
  }
}