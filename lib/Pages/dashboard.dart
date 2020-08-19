import 'dart:io';

import 'package:creativedesign/Pages/homepage.dart';
import 'package:creativedesign/Pages/tutorials.dart';
import 'package:creativedesign/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // BackPress Button
  Future<bool> onBackPress() {
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Exit App?'),
          content: Container(
            height: 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    'Do you want to exit an app?',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300
                    ),
                  ),
                ),

              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('CANCEL'),
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
            ),
            FlatButton(
              child: Text('OK',style: TextStyle(color:Colors.red,fontSize: 15),),
              onPressed: () {
                exit(0);
              },
            ),
          ],
        );
      },
    );
  }
  double xoffset = 0;
  double yoffset = 0;
  double scaleFactor = 1;
  bool drawermove = false;
  double xoffset1 = 205;
  double yoffset1 = 145;
  double scaleFactor1 = 0.6;
  bool drawermove1 = true;
  Widget DrawerItems(String title,IconData icon){
    return ListTile(
      leading: Icon(icon,color: Colors.white,),
      title: Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white,fontFamily: "Times New Roman",letterSpacing: 2)),
      onTap: (){},
    );
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.grey,
              padding: EdgeInsets.only(top: 40,left: 15,bottom: 10),
              //height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        maxRadius: 30,
                        backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503249023995-51b0f3778ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Sudhir Gamit",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white,fontFamily: "Times New Roman",letterSpacing: 1),),
                          SizedBox(height: 3,),
                          Text("sudhirgamitbca15@gmail.com",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.white,fontFamily: "Times New Roman",letterSpacing: 1),),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      DrawerItems("Home",Icons.home),
                      DrawerItems("Profile",Icons.person),
                      DrawerItems("Share",Icons.share),
                      DrawerItems("About Us",Icons.info),
                      DrawerItems("Help",Icons.help),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.settings,color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("Setting",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color: Colors.white,fontFamily: "Times New Roman",letterSpacing: 1),),
                      SizedBox(width: 10,),
                      Container(color: Colors.white,height: 18,width: 2,),
                      SizedBox(width: 10,),
                      Text("Sign out",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white,fontFamily: "Times New Roman",letterSpacing: 1),),
                      SizedBox(width: 20,),
                      CircleAvatar(
                        maxRadius: 20,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: (){
                            setState(() {
                              Constants.prefs.setBool("LoggedIn",false);
                              Navigator.pushReplacementNamed(context, "/login");
                            });
                          },
                          icon: Icon(Icons.settings_power,color: Colors.red,),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            AnimatedContainer(
              transform: Matrix4.translationValues(xoffset1, yoffset1, 0)..scale(scaleFactor1)..rotateY(drawermove1 ? 0.5 : 0.0),
              duration: Duration(milliseconds: 250),
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.white24.withOpacity(0.7),
                  gradient: LinearGradient(colors: [Colors.white,Colors.grey]),
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
                                setState(() {});
                              },
                              icon: Icon(Icons.arrow_back_ios,color: Colors.black.withOpacity(0.7),),
                            ) :
                            IconButton(
                              onPressed: (){
                                setState(() {
                                  xoffset1 = 205;
                                  yoffset1 = 145;
                                  scaleFactor1 = 0.6;
                                  drawermove1 = true;
                                });
                              },
                              icon: Icon(Icons.menu,color: Colors.black,),
                            ),
                            Text("Creative Design",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
                            drawermove1 ? Container() :CircleAvatar(
                              maxRadius: 20,
                              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503249023995-51b0f3778ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                            ),
                          ]
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: <Widget>[
                          Card(
                            elevation: 5.0,
                            color: CupertinoColors.lightBackgroundGray.withOpacity(0.7),
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                              onTap: (){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Tutorials()));
                                });
                              },
                              leading: CircleAvatar(
                                maxRadius: 30,
                                child: Chip(
                                  label: Text("F",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.white,shadows: [Shadow(color: Colors.black,blurRadius: 7.0)]),),
                                ),
                                backgroundColor: Colors.blueGrey,
                              ),
                              trailing: Container(
                                height: 100,
                                width: 8,color: Colors.blueGrey,
                              ),
                              title: Container(
                                padding: EdgeInsets.symmetric(vertical: 25,),
                                child: Text("Flutter Tutorial ",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1)),
                              ),
                            ),
                          ),
                          SizedBox(height: 7,),
                          Card(
                            elevation: 5.0,
                            color: CupertinoColors.lightBackgroundGray.withOpacity(0.7),
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                              onTap: (){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                });
                              },
                              leading: CircleAvatar(
                                maxRadius: 30,
                                child: Chip(
                                  label: Text("B",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.white,shadows: [Shadow(color: Colors.black,blurRadius: 7.0)]),),
                                ),
                                backgroundColor: Colors.green,
                              ),
                              trailing: Container(
                                height: 100,
                                width: 8,color: Colors.green,
                              ),
                              title: Container(
                                padding: EdgeInsets.symmetric(vertical: 25,),
                                child: Text("Basic ",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1)),
                              ),
                            ),
                          ),
                          SizedBox(height: 7,),
                          Card(
                            elevation: 5.0,
                            color: CupertinoColors.lightBackgroundGray.withOpacity(0.7),
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                              leading: CircleAvatar(
                                maxRadius: 30,
                                child: Chip(
                                  label: Text("A",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.white,shadows: [Shadow(color: Colors.black,blurRadius: 7.0)]),),
                                ),
                                backgroundColor: Colors.blueAccent,
                              ),
                              trailing: Container(
                                height: 100,
                                width: 8,color: Colors.blueAccent,
                              ),
                              title: Container(
                                padding: EdgeInsets.symmetric(vertical: 25,),
                                child: Text("Advance ",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1),),
                              ),
                            ),
                          ),
                          SizedBox(height: 7,),
                          Card(
                            elevation: 5.0,
                            color: CupertinoColors.lightBackgroundGray.withOpacity(0.7),
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                              leading: CircleAvatar(
                                maxRadius: 30,
                                child: Chip(
                                  label: Text("C",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.white,shadows: [Shadow(color: Colors.black,blurRadius: 7.0)]),),
                                ),
                                backgroundColor: Colors.teal,
                              ),
                              trailing: Container(
                                height: 100,
                                width: 8,color: Colors.teal,
                              ),
                              title: Container(
                                padding: EdgeInsets.symmetric(vertical: 25,),
                                child: Text("Creative Design",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedContainer(
              transform: Matrix4.translationValues(xoffset, yoffset, 0)..scale(scaleFactor)..rotateY(drawermove ? 0.5 : 0.0),
              duration: Duration(milliseconds: 250),
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(colors: [Colors.white,Colors.grey]),
                  borderRadius: BorderRadius.all(Radius.circular(drawermove ? 30 : 0.0))
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 10,top: 25),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
                            ) :
                            IconButton(
                              onPressed: (){
                                setState(() {
                                  xoffset = 230;
                                  yoffset = 110;
                                  scaleFactor = 0.7;
                                  drawermove = true;
                                });
                              },
                              icon: Icon(Icons.menu,color: Colors.black,),
                            ),
                            Text("Creative Design",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                });
                              },
                              child: CircleAvatar(
                                maxRadius: 20,
                                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503249023995-51b0f3778ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                              ),
                            ),

                          ]
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: <Widget>[
                          Card(
                            elevation: 5.0,
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                              onTap: (){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Tutorials()));
                                });
                              },
                              leading: CircleAvatar(
                                maxRadius: 30,
                                child: Chip(
                                  label: Text("F",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.white,shadows: [Shadow(color: Colors.black,blurRadius: 7.0)]),),
                                ),
                                backgroundColor: Colors.blueGrey,
                              ),
                              trailing: Container(
                                height: 100,
                                width: 8,color: Colors.blueGrey,
                              ),
                              title: Container(
                                padding: EdgeInsets.symmetric(vertical: 25,),
                                child: Text("Flutter Tutorial ",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1)),
                              ),
                            ),
                          ),
                          SizedBox(height: 7,),
                          Card(
                            elevation: 5.0,
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                              onTap: (){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                });
                              },
                              leading: CircleAvatar(
                                maxRadius: 30,
                                child: Chip(
                                  label: Text("B",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.white,shadows: [Shadow(color: Colors.black,blurRadius: 7.0)]),),
                                ),
                                backgroundColor: Colors.green,
                              ),
                              trailing: Container(
                                height: 100,
                                width: 8,color: Colors.green,
                              ),
                              title: Container(
                                padding: EdgeInsets.symmetric(vertical: 25,),
                                child: Text("Basic ",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1)),
                              ),
                            ),
                          ),
                          SizedBox(height: 7,),
                          Card(
                            elevation: 5.0,
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                              leading: CircleAvatar(
                                maxRadius: 30,
                                child: Chip(
                                  label: Text("A",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.white,shadows: [Shadow(color: Colors.black,blurRadius: 7.0)]),),
                                ),
                                backgroundColor: Colors.blueAccent,
                              ),
                              trailing: Container(
                                height: 100,
                                width: 8,color: Colors.blueAccent,
                              ),
                              title: Container(
                                padding: EdgeInsets.symmetric(vertical: 25,),
                                child: Text("Advance ",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1),),
                              ),
                            ),
                          ),
                          SizedBox(height: 7,),
                          Card(
                            elevation: 5.0,
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                              leading: CircleAvatar(
                                maxRadius: 30,
                                child: Chip(
                                  label: Text("C",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.white,shadows: [Shadow(color: Colors.black,blurRadius: 7.0)]),),
                                ),
                                backgroundColor: Colors.teal,
                              ),
                              trailing: Container(
                                height: 100,
                                width: 8,color: Colors.teal,
                              ),
                              title: Container(
                                padding: EdgeInsets.symmetric(vertical: 25,),
                                child: Text("Creative Design",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      onWillPop: onBackPress,
    );
  }
}