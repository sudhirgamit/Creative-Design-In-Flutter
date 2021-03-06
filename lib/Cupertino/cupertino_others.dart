import 'package:creativedesign/Cupertino_Codes/cupertino_others_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Cupertino_Others extends StatefulWidget {
  @override
  _Cupertino_OthersState createState() => _Cupertino_OthersState();
}
class _Cupertino_OthersState extends State<Cupertino_Others> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _first=false; double progress=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Cupertino Others",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Cupertino_Others_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("CupertinoNavigationBar",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
            CupertinoNavigationBar(
              leading: CupertinoNavigationBarBackButton(
                previousPageTitle: "Home",
                onPressed: (){},
                color: CupertinoColors.white
              ),
              middle: Text("CupertinoNavigationBar",style: TextStyle(color: Colors.white),),
              backgroundColor: CupertinoColors.link,
              trailing: Icon(CupertinoIcons.mail,color: Colors.white,)
            ),
            Divider(height: 100,thickness: 1.5,indent: 50,endIndent: 50,color: Colors.cyan,),
            Text("CupertinoSwitch",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            SizedBox(height: 5,),
            CupertinoSwitch(
              value: _first,
              onChanged: (bool val){
                setState(() {
                  _first = val;
                });
              },
              activeColor: Colors.lightGreen,
              dragStartBehavior: DragStartBehavior.start,
            ),
            Divider(height: 100,thickness: 1.5,indent: 50,endIndent: 50,color: Colors.green,),
            Text("CupertinoSlider",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            CupertinoSlider(
              min: 0.0,max: 100.0,
              onChanged: (val){
                setState(() {
                  progress = val.roundToDouble();
                });
              },
              value: progress,
              activeColor: Colors.lightGreen,
              thumbColor: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}
