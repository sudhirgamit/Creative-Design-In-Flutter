import 'dart:ui';

import 'package:creativedesign/Pages/dashboard.dart';
import 'package:flutter/material.dart';

class Tutorials extends StatefulWidget {
  @override
  _TutorialsState createState() => _TutorialsState();
}

class _TutorialsState extends State<Tutorials> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  Widget CardExpansionTile(String num,String question,String answer){
    return Card(
      elevation: 5.0,
      child: ExpansionTile(
        leading: CircleAvatar(
          child: Text(num,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600)),
        ),
        title: Text(question,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 0.8),),
        children: <Widget>[
          Container(
            child: Text(answer, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),textAlign: TextAlign.justify,),
            padding: EdgeInsets.only(left: 18,bottom: 10,right: 10,top: 10),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Flutter Tutorial",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_Navigation_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black,),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: ListView(
          children: <Widget>[
            CardExpansionTile("01","What is flutter?","Flutter is an open-source UI software development kit created by Google. It is used to develop applications for Android, iOS, Linux, Mac, Windows, Google Funchsia and the web from a single codebase."),
            CardExpansionTile("02","History of flutter?",
                "Stable release :- v1.17.5 / July 2, 2020;"
                "\nDeveloper(s) :- Google and community"
                "\nPreview release :- 1.19.0-4.3.pre / July 2, 2020;"
                "\nInitial release date :- May 2017"
                "\nPlatforms :- Android, iOS, Google Fuchsia, Web platform, Linux, macOS, Microsoft Windows"
                "\nWritten in :- C, C++, Dart"
            ),
            CardExpansionTile("03","What is dart?","Dart is a general-purpose, object-oriented programming language with C-style syntax. It is open-source and developed by Google in 2011. The purpose of Dart programming is to create a frontend user interfaces for the web and mobile apps. It is an important language for creating Flutter apps. The Dart language can be compiled both AOT (Ahead-of-Time) and JIT (Just-in-Time)."),
            CardExpansionTile("04","History of dart?",
                "Stable release :- 2.9.0 / August 5, 2020;"
                "\nPreview release :- 2.10.0-3.0.dev / August 5, 2020;"
                "\nTyping discipline :- 1.x: Optional; 2.x: Inferred (static, strong)"
                "\nFirst appeared :- October 10, 2011;"
                "\nLicense :- BSD"
                "\nDesigned by :- Lars Bak"
            ),
            CardExpansionTile("05","Is Flutter Free?","Yes. Flutter is free and open-source."),
          ],
        ),
      )
    );
  }
}
