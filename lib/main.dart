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
      // leading: IconButton( 
      //   icon: Icon(Icons.menu), onPressed: (){
      //     print('menu button is clicked!');
      //   } ,
      // ),
      actions: <Widget>[
        IconButton( 
        icon: Icon(Icons.shopping_cart), onPressed: (){
          print('Shopping cart button is clicked!');
        },
      ),
      IconButton( 
        icon: Icon(Icons.search), onPressed: (){
          print('Search button is clicked!');
        } ,
      ),
       ],
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

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/Torch.gif'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/bears.png'),
                  )
              ],
              accountName: Text('Joseph'),
              accountEmail: Text('Joseph@CLO3D.COM'),
              onDetailsPressed: (){
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, 
              color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: (){
                //일종의 람다함수라고 보면됨.
                print('Home is clicked!!');
              },
              trailing: Icon(Icons.add),
            ),
             ListTile(
              leading: Icon(Icons.settings, 
              color: Colors.grey[850],
              ),
              title: Text('Settings'),
              onTap: (){
                print('Settings is clicked!!');
              },
              trailing: Icon(Icons.add),
            ),
             ListTile(
              leading: Icon(Icons.today, 
              color: Colors.grey[850],
              ),
              title: Text('ToDo'),
              onTap: (){
                print('ToDo is clicked!!');
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage2()),
                );
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      backgroundColor: Colors.deepPurple[600],
      body:Stack(  
        alignment: Alignment.center,
        children: <Widget>[ 
          Container( 
            width : 400,
            height: 600,
            child: Image.asset('assets/Torch.gif', fit: BoxFit.contain), 
          ),
          Positioned(  
            child : Text("Todos", style: TextStyle(color:Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
            top:40,
            left: 20,
          ),
          DraggableScrollableSheet(
            maxChildSize:  0.85,
            builder: (BuildContext context, ScrollController scrolcontroller){
              return Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                Container(
                decoration: BoxDecoration( 
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight : Radius.circular(40), topLeft : Radius.circular(40)),
                ),
                child: ListView.builder(
                  itemBuilder: (context,index){
                    return ListTile(
                      title: Text("task No $index", style:TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),),
                      subtitle:  Text("This is the detail of task No $index", style:TextStyle(color: Colors.grey[700]),),
                      trailing: Icon(Icons.check_circle,color: Colors.greenAccent,),
                      isThreeLine: true,
                    );
                  },
                  controller: scrolcontroller,
                  itemCount: 10,
                ),
              ),
              Positioned( 
                child:   FloatingActionButton(  
                  child: Icon(Icons.add, color:Colors.white,),
                  backgroundColor: Colors.pinkAccent,
                ),
                top: -30,
                right:30,
               )
              ],
              );
            },
          )
        ],
      ),
    );
  }
}