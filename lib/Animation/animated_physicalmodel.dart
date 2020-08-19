import 'package:creativedesign/Animation_Codes/animated_physicalmodel_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Animated_PhysicalModel extends StatefulWidget {
  @override
  _Animated_PhysicalModelState createState() => _Animated_PhysicalModelState();
}
class _Animated_PhysicalModelState extends State<Animated_PhysicalModel> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _first = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Animated PhysicalModel",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_PhysicalModel_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            AnimatedPhysicalModel(
              child: Container(
                height: 150,width: 150,color:Colors.orange
              ),
              elevation: _first ? 20.0 : 0.0,
              duration: Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              animateShadowColor: true,
              animateColor: true,
              shape: BoxShape.rectangle,
              color: Colors.black,
              shadowColor: Colors.teal,
            ),
            RaisedButton(
              child: Text("Change Elevation!"),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 5.0,
              onPressed: (){
                setState(() {
                  _first = !_first;
                });
              },
            ),
            AnimatedPhysicalModel(
              child: Container(
                  height: 150,width: 150,color:Colors.green
              ),
              elevation: _first ? 0.0 : 20.0,
              duration: Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              animateShadowColor: true,
              animateColor: true,
              shape: BoxShape.rectangle,
              color: Colors.black,
              shadowColor: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}
