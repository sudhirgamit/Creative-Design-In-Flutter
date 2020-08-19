import 'package:creativedesign/Animation_Codes/animated_size_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Animated_Size extends StatefulWidget {
  @override
  _Animated_SizeState createState() => _Animated_SizeState();
}
class _Animated_SizeState extends State<Animated_Size> with SingleTickerProviderStateMixin {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _first = false; double _width = 150; double _height = 150;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Animated Size",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_Size_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
             height: _height,
              child: AnimatedSize(
                duration: Duration(milliseconds: 250),
                vsync: this,
                curve: Curves.easeInCirc,
                child: Container(
                  height: _width,
                  width: _height,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            SizedBox(height: 20,),
            RaisedButton(
              onPressed: (){
                setState(() {
                  _width = _first ? 250 : 150;
                  _height = _first ? 250 : 150;
                  _first = !_first;
                });
              },
              child: Text("Change !",style: TextStyle(color: Colors.white),),
              color: Colors.teal,
              elevation: 5.0,
            )
          ],
        ),
      ),
    );
  }
}
