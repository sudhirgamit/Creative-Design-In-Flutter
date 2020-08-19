import 'package:creativedesign/Codes/icon_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Icon_Box extends StatefulWidget {
  @override
  _Icon_BoxState createState() => _Icon_BoxState();
}

class _Icon_BoxState extends State<Icon_Box> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Icon Box",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Icon_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.add_circle,color: Colors.yellow,),
            Icon(Icons.person,size: 35,),
            Icon(Icons.phone,size: 40,color: Colors.blue,),
            Icon(Icons.print,size: 45,color: Colors.red,textDirection: TextDirection.ltr,),
          ],
        ),
      ),
    );
  }
}

