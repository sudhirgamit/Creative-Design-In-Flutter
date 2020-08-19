import 'package:creativedesign/Animation_Codes/animated_textstyle_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Animated_TextStyle extends StatefulWidget {
  @override
  _Animated_TextStyleState createState() => _Animated_TextStyleState();
}

class _Animated_TextStyleState extends State<Animated_TextStyle> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _first = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Animated DefaultTextStyle",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_TextStyle_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            AnimatedDefaultTextStyle(
              child: Text("Creative"),
              textAlign: TextAlign.center,
              curve: Curves.fastOutSlowIn,
              duration: Duration(seconds: 3),
              style: TextStyle(fontSize: _first ? 40 : 50,fontWeight: FontWeight.w600,color:_first ? Colors.deepOrangeAccent : Colors.blueGrey),
            ),
            AnimatedDefaultTextStyle(
              child: Text("Design"),
              textAlign: TextAlign.center,
              curve: Curves.fastOutSlowIn,
              duration: Duration(seconds: 3),
              style: TextStyle(fontSize: _first ? 50 : 25,fontWeight: FontWeight.w600,color: _first ? Colors.red : Colors.blueAccent),
            ),
            AnimatedDefaultTextStyle(
              child: Text("Flutter"),
              textAlign: TextAlign.center,
              curve: Curves.fastOutSlowIn,
              duration: Duration(seconds: 3),
              style: TextStyle(fontSize: _first ? 20 : 40,fontWeight: FontWeight.w600,color: _first ? Colors.red : Colors.lightBlue),
            ),
            RaisedButton(
              onPressed: (){
                setState(() {
                  _first = !_first;
                });
              },
              child: Text("TextStyle!",style: TextStyle(fontSize: 20),),
              color: Colors.red,
              textColor: Colors.white,
              elevation: 10.0,
            )
          ],
        ),
      ),
    );
  }
}
