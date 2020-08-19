import 'package:creativedesign/Animation_Codes/animated_opacity_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Animated_Opacity extends StatefulWidget {
  @override
  _Animated_OpacityState createState() => _Animated_OpacityState();
}
class _Animated_OpacityState extends State<Animated_Opacity> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  double _opacitylevel1 = 1.0;  double _opacitylevel2 = 1.0;  double _opacitylevel3 = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Animated Opacity",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_Opacity_Code()));
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
            InkWell(
              onTap: (){
                setState(() {
                  _opacitylevel1 = _opacitylevel1==0 ? 1.0 : 0.0;
                });
              },
              child: AnimatedOpacity(
                  opacity: _opacitylevel1,
                  duration: Duration(seconds: 3),
                  curve: Curves.slowMiddle,
                  child: Container(
                    width: 150,height: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      shape: BoxShape.circle
                    ),
                    child: Text("Tap",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                  ),
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  _opacitylevel2 = _opacitylevel2==0 ? 1.0 : 0.0;
                });
              },
              child: AnimatedOpacity(
                opacity: _opacitylevel2,
                duration: Duration(seconds: 1),
                curve: Curves.slowMiddle,
                child: Container(
                  width: 150,height: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle
                  ),
                  child: Text("Tap",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  _opacitylevel3 = _opacitylevel3==0 ? 1.0 : 0.0;
                });
              },
              child: AnimatedOpacity(
                opacity: _opacitylevel3,
                duration: Duration(seconds: 2),
                curve: Curves.slowMiddle,
                child: Container(
                  width: 150,height: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      shape: BoxShape.circle
                  ),
                  child: Text("Tap",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
