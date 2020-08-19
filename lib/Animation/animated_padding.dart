import 'package:creativedesign/Animation_Codes/animated_padding_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Animated_Padding extends StatefulWidget {
  @override
  _Animated_PaddingState createState() => _Animated_PaddingState();
}
class _Animated_PaddingState extends State<Animated_Padding> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  double _size = 10;
  bool _first = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Animated Padding",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_Padding_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 300,width: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: _first ? [Colors.blueAccent,Colors.teal,Colors.lightBlueAccent,Colors.indigo] : [Colors.red,Colors.orangeAccent,Colors.yellowAccent,Colors.deepOrange] ,
            ),
            borderRadius: BorderRadius.all(Radius.circular(5))
          ),
          child: AnimatedPadding(
              padding: EdgeInsets.all(_size),
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOutSine,
              child: InkWell(
                onTap: (){
                  setState(() {
                    _size = _first ? 10 : 100;
                    _first = !_first;
                  });
                },
                child: Container(
                  width: 50,height: 50,
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                    color: _first ? Colors.deepOrange : Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Text("Click Me!",style: TextStyle(color: _first ? Colors.white : Colors.black,fontSize: _first ? 14 : 20,letterSpacing: 1,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
                ),
              ),
          ),
        ),
      ),
    );
  }
}
