import 'package:creativedesign/Layouts_Codes/expandeds_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Expandeds extends StatefulWidget {
  @override
  _ExpandedsState createState() => _ExpandedsState();
}

class _ExpandedsState extends State<Expandeds> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Expanded Layouts",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Expandeds_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // Expanded is automatically flex space to define
            children: <Widget>[
              Row(
                children: <Widget>[
                 // Flex 1 is space define
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.orange,
                      height: 100,
                      alignment: Alignment.center,
                      child: Text("Flex 1",style:TextStyle(color: Colors.white),),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: Text("Flex 1",style:TextStyle(color: Colors.white),),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Text("Flex 1",style:TextStyle(color: Colors.white),),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      color: Colors.blueGrey,
                      alignment: Alignment.center,
                      child: Text("Flex 1",style:TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  // Flex 1 is space define
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.orange,
                      height: 100,
                      alignment: Alignment.center,
                      child: Text("Flex 1",style:TextStyle(color: Colors.white),),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: Text("Flex 1",style:TextStyle(color: Colors.white),),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.blueGrey,
                      height: 100,
                      alignment: Alignment.center,
                      child: Text("Flex 1",style:TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  // Flex 2 is space define
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.orange,
                      height: 100,
                      alignment: Alignment.center,
                      child: Text("Flex 1",style:TextStyle(color: Colors.white),),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 100,
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: Text("Flex 2",style:TextStyle(color: Colors.white),),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.blueGrey,
                      height: 100,
                      alignment: Alignment.center,
                      child: Text("Flex 1",style:TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  // Flex 2 is space define
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.orange,
                      height: 100,
                      alignment: Alignment.center,
                      child: Text("Flex 2",style:TextStyle(color: Colors.white),),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 100,
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: Text("Flex 2",style:TextStyle(color: Colors.white),),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.blueGrey,
                      height: 100,
                      alignment: Alignment.center,
                      child: Text("Flex 1",style:TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  // Flex 3 is space define
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.orange,
                      height: 100,
                      alignment: Alignment.center,
                      child: Text("Flex 3",style:TextStyle(color: Colors.white),),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 100,
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: Text("Flex 2",style:TextStyle(color: Colors.white),),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.blueGrey,
                      height: 100,
                      alignment: Alignment.center,
                      child: Text("Flex 1",style:TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
