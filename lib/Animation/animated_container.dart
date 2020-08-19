import 'package:creativedesign/Animation_Codes/animated_container_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Animated_Container extends StatefulWidget {
  @override
  _Animated_ContainerState createState() => _Animated_ContainerState();
}

class _Animated_ContainerState extends State<Animated_Container> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  double xoffset = 0;
  double yoffset = 0;
  double scaleFactor = 1;
  bool drawermove = false;
  double xoffset1 = 0;
  double yoffset1 = 0;
  double scaleFactor1 = 1;
  bool drawermove1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Animated Container",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_Container_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body:  Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          AnimatedContainer(
            transform: Matrix4.translationValues(xoffset, yoffset, 0)..scale(scaleFactor)..rotateY(drawermove ? 0.5 : 0.0),
            duration: Duration(milliseconds: 250),
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(Radius.circular(drawermove ? 30 : 0.0))
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10,top: 25),
                    child: Row(
                        mainAxisAlignment: drawermove ? MainAxisAlignment.start : MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          drawermove ?
                          IconButton(
                            onPressed: (){
                              setState(() {
                                xoffset = 0;
                                yoffset = 0;
                                scaleFactor = 1;
                                drawermove = false;
                              });
                            },
                            icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
                          ) :
                          IconButton(
                            onPressed: (){
                              setState(() {
                                xoffset = 220;
                                yoffset = 90;
                                scaleFactor = 0.7;
                                drawermove = true;
                              });
                            },
                            icon: Icon(Icons.menu,color: Colors.white,),
                          ),
                          Text("Second Page",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                          drawermove ? Container() :CircleAvatar(
                            maxRadius: 20,
                            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503249023995-51b0f3778ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                          ),
                        ]
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedContainer(
            transform: Matrix4.translationValues(xoffset1, yoffset1, 0)..scale(scaleFactor1)..rotateY(drawermove1 ? 0.5 : 0.0),
            duration: Duration(milliseconds: 250),
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(drawermove1 ? 30 : 0.0))
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10,top: 25),
                    child: Row(
                        mainAxisAlignment: drawermove1 ? MainAxisAlignment.start : MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          drawermove1 ?
                          IconButton(
                            onPressed: (){
                              setState(() {
                                xoffset1 = 0;
                                yoffset1 = 0;
                                scaleFactor1 = 1;
                                drawermove1 = false;
                              });
                            },
                            icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
                          ) :
                          IconButton(
                            onPressed: (){
                              setState(() {
                                xoffset1 = 250;
                                yoffset1 = 60;
                                scaleFactor1 = 0.8;
                                drawermove1 = true;
                              });
                            },
                            icon: Icon(Icons.menu,color: Colors.white,),
                          ),
                         Text("First Page",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                          drawermove1 ? Container() :CircleAvatar(
                            maxRadius: 20,
                            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503249023995-51b0f3778ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                          ),
                        ]
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
