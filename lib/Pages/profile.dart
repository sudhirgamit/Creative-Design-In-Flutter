import 'package:creativedesign/Pages/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints view) {
          return Scaffold(
            backgroundColor: Colors.white,
            floatingActionButton: FloatingActionButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
              },
              elevation: 5.0,backgroundColor: Colors.red,
              child: Text("Back"),
              tooltip: "Back",mini: false,
            ),
            body: SingleChildScrollView(
              child: SafeArea(
                top: false,
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: view.minHeight/2.2,width: view.minWidth,
                          //color: Colors.black12,
                        ),
                        Container(
                          height: 230,width: view.minWidth,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(180),bottomRight: Radius.circular(180))
                          ),
                        ),
                        Container(
                          height: 200,width: view.minWidth,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(180),bottomRight: Radius.circular(180)),
                            boxShadow: [BoxShadow(
                              color: Colors.white38,
                              blurRadius: 13,
                              spreadRadius: 1.5
                            )]
                          ),
                        ),
                        Container(
                          height: 170,width: view.minWidth,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200),bottomRight: Radius.circular(200))
                          ),
                        ),
                        Positioned(
                          top: view.minHeight/5,
                          child: Container(
                            height: 150,width: view.minWidth,
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                shape: BoxShape.circle,
                                border: Border.all(width: 8,color: Colors.grey)
                            ),
                          ),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          padding: EdgeInsets.only(top: view.minHeight/4.5,bottom: 0,right: 0,left: 0),
                          child: CircleAvatar(
                            maxRadius: 60,
                            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503249023995-51b0f3778ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                          ),
                        ),
                        Container(
                            alignment: AlignmentDirectional.center,
                            padding: EdgeInsets.only(top: view.minHeight/2.8,bottom: 0,right: 0,left: 100),
                            child: Icon(
                              Icons.add_a_photo,
                              size: 30,color: Colors.black54,
                            )
                        ),
                      ],
                    ),
                    Card(
                      elevation: 5.0,
                      margin: EdgeInsets.all(15),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 20,bottom: 10),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Center(child: Text("Tutorials",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),)),
                                ),
                                Expanded(
                                  child: Center(child: Text("Basics",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),)),
                                ),
                                Expanded(
                                  child: Center(child: Text("Advances",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),)),
                                ),
                                Expanded(
                                  child: Center(child: Text("Designs",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Center(child: Text("42")),
                                ),
                                Expanded(
                                  child: Center(child: Text("9")),
                                ),
                                Expanded(
                                  child: Center(child: Text("6")),
                                ),
                                Expanded(
                                  child: Center(child: Text("10")),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ),
                    Card(
                      elevation: 5.0,
                      margin: EdgeInsets.all(15),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        onTap: (){},
                        leading: Icon(CupertinoIcons.person),
                        title: Text("Sudhir Gamit",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                        trailing: Icon(CupertinoIcons.create),
                      ),
                    ),
                    Card(
                      elevation: 5.0,
                      margin: EdgeInsets.all(15),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        onTap: (){},
                        leading: Icon(CupertinoIcons.mail),
                        title: Text("sudhirgamitbca15@gmail.com",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                        trailing: Icon(CupertinoIcons.create),
                      ),
                    ),
                    Card(
                      elevation: 5.0,
                      margin: EdgeInsets.all(15),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        onTap: (){},
                        leading: Icon(CupertinoIcons.phone),
                        title: Text("+91 8238895676",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                        trailing: Icon(CupertinoIcons.create),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
}
