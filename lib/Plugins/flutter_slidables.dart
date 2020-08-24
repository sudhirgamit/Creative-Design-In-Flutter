import 'package:creativedesign/Pages/advance.dart';
import 'package:creativedesign/Plugins_Codes/flutter_slidables_code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Flutter_Slidables extends StatefulWidget {
  @override
  _Flutter_SlidablesState createState() => _Flutter_SlidablesState();
}
class _Flutter_SlidablesState extends State<Flutter_Slidables> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Flutter Slidable",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Advance()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Flutter_Slidables_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black,),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Slidable(
            actionPane: SlidableDrawerActionPane(),
            actionExtentRatio: 0.50,
            child: Container(
              color: Colors.lightGreen,
              padding: EdgeInsets.all(5),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: Chip(backgroundColor: Colors.white,label: Text("A",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 10),),),
                ),
                title: Text("Slidable Drawer Action Pane",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
                contentPadding: EdgeInsets.all(10),
                trailing: Icon(
                  CupertinoIcons.delete,color: Colors.white,size: 25,
                ),
              ),
            ),
            actions: <Widget>[
              IconSlideAction(
                icon: CupertinoIcons.home,
                color: Colors.white,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                      SnackBar(
                        content: Text("Home",style: TextStyle(color: Colors.teal),),
                        elevation: 5.0,
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.white,
                        action: SnackBarAction(
                          label: "OK",textColor: Colors.teal,
                          onPressed: (){},
                        ),
                      )
                    );
                  });
                },
                caption: "Home",
              ),
              IconSlideAction(
                icon: CupertinoIcons.share_up,
                color: Colors.cyan,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Share",style: TextStyle(color: Colors.teal),),
                          elevation: 5.0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.white,
                          action: SnackBarAction(
                            label: "OK",textColor: Colors.teal,
                            onPressed: (){},
                          ),
                        )
                    );
                  });
                },
                caption: "Share",
              )
            ],
            secondaryActions: <Widget>[
              IconSlideAction(
                icon: CupertinoIcons.create,
                color: Colors.white,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Create",style: TextStyle(color: Colors.teal),),
                          elevation: 5.0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.white,
                          action: SnackBarAction(
                            label: "OK",textColor: Colors.teal,
                            onPressed: (){},
                          ),
                        )
                    );
                  });
                },
                caption: "Edit",
              ),
              IconSlideAction(
                icon: CupertinoIcons.delete_simple,
                color: Colors.red,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Delete",style: TextStyle(color: Colors.red),),
                          elevation: 5.0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.white,
                          action: SnackBarAction(
                            label: "OK",textColor: Colors.red,
                            onPressed: (){},
                          ),
                        )
                    );
                  });
                },
                caption: "Delete",
              )
            ],
          ),
          SizedBox(height: 10,),
          Slidable(
            actionPane: SlidableBehindActionPane(),
            actionExtentRatio: 0.25,
            child: Container(
              color: Colors.teal,
              padding: EdgeInsets.all(5),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: Chip(backgroundColor: Colors.white,label: Text("B",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 10),),),
                ),
                title: Text("Slidable Behind Action Pane",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
                contentPadding: EdgeInsets.all(10),
                trailing: Icon(
                  CupertinoIcons.delete,color: Colors.white,size: 25,
                ),
              ),
            ),
            actions: <Widget>[
              IconSlideAction(
                icon: CupertinoIcons.home,
                color: Colors.white,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Home",style: TextStyle(color: Colors.teal),),
                          elevation: 5.0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.white,
                          action: SnackBarAction(
                            label: "OK",textColor: Colors.teal,
                            onPressed: (){},
                          ),
                        )
                    );
                  });
                },
                caption: "Home",
              ),
              IconSlideAction(
                icon: CupertinoIcons.share_up,
                color: Colors.cyan,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Share",style: TextStyle(color: Colors.teal),),
                          elevation: 5.0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.white,
                          action: SnackBarAction(
                            label: "OK",textColor: Colors.teal,
                            onPressed: (){},
                          ),
                        )
                    );
                  });
                },
                caption: "Share",
              )
            ],
            secondaryActions: <Widget>[
              IconSlideAction(
                icon: CupertinoIcons.create,
                color: Colors.white,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Create",style: TextStyle(color: Colors.teal),),
                          elevation: 5.0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.white,
                          action: SnackBarAction(
                            label: "OK",textColor: Colors.teal,
                            onPressed: (){},
                          ),
                        )
                    );
                  });
                },
                caption: "Edit",
              ),
              IconSlideAction(
                icon: CupertinoIcons.delete_simple,
                color: Colors.red,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Delete",style: TextStyle(color: Colors.red),),
                          elevation: 5.0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.white,
                          action: SnackBarAction(
                            label: "OK",textColor: Colors.red,
                            onPressed: (){},
                          ),
                        )
                    );
                  });
                },
                caption: "Delete",
              )
            ],
            direction: Axis.horizontal,
          ),
          SizedBox(height: 10,),
          Slidable(
            actionPane: SlidableScrollActionPane(),
            actionExtentRatio: 0.25,
            child: Container(
              color: Colors.green,
              padding: EdgeInsets.all(5),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: Chip(backgroundColor: Colors.white,label: Text("C",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 10),),),
                ),
                title: Text("Slidable Scroll Action Pane",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
                contentPadding: EdgeInsets.all(10),
                trailing: Icon(
                  CupertinoIcons.delete,color: Colors.white,size: 25,
                ),
              ),
            ),
            actions: <Widget>[
              IconSlideAction(
                icon: CupertinoIcons.home,
                color: Colors.white,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Home",style: TextStyle(color: Colors.teal),),
                          elevation: 5.0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.white,
                          action: SnackBarAction(
                            label: "OK",textColor: Colors.teal,
                            onPressed: (){},
                          ),
                        )
                    );
                  });
                },
                caption: "Home",
              ),
              IconSlideAction(
                icon: CupertinoIcons.share_up,
                color: Colors.cyan,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Share",style: TextStyle(color: Colors.teal),),
                          elevation: 5.0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.white,
                          action: SnackBarAction(
                            label: "OK",textColor: Colors.teal,
                            onPressed: (){},
                          ),
                        )
                    );
                  });
                },
                caption: "Share",
              )
            ],
            secondaryActions: <Widget>[
              IconSlideAction(
                icon: CupertinoIcons.create,
                color: Colors.white,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Create",style: TextStyle(color: Colors.teal),),
                          elevation: 5.0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.white,
                          action: SnackBarAction(
                            label: "OK",textColor: Colors.teal,
                            onPressed: (){},
                          ),
                        )
                    );
                  });
                },
                caption: "Edit",
              ),
              IconSlideAction(
                icon: CupertinoIcons.delete_simple,
                color: Colors.red,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Delete",style: TextStyle(color: Colors.red),),
                          elevation: 5.0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.white,
                          action: SnackBarAction(
                            label: "OK",textColor: Colors.red,
                            onPressed: (){},
                          ),
                        )
                    );
                  });
                },
                caption: "Delete",
              )
            ],
            direction: Axis.horizontal,
            movementDuration: Duration(seconds: 1),
          ),
          SizedBox(height: 10,),
          Slidable(
            actionPane: SlidableStrechActionPane(),
            actionExtentRatio: 0.25,
            child: Container(
              color: Colors.indigoAccent,
              padding: EdgeInsets.all(5),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: Chip(backgroundColor: Colors.white,label: Text("D",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 10),),),
                ),
                title: Text("Slidable Strech Action Pane",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
                contentPadding: EdgeInsets.all(10),
                trailing: Icon(
                  CupertinoIcons.delete,color: Colors.white,size: 25,
                ),
              ),
            ),
            actions: <Widget>[
              IconSlideAction(
                icon: CupertinoIcons.home,
                color: Colors.white,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Home",style: TextStyle(color: Colors.teal),),
                          elevation: 5.0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.white,
                          action: SnackBarAction(
                            label: "OK",textColor: Colors.teal,
                            onPressed: (){},
                          ),
                        )
                    );
                  });
                },
                caption: "Home",
              ),
              IconSlideAction(
                icon: CupertinoIcons.share_up,
                color: Colors.cyan,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Share",style: TextStyle(color: Colors.teal),),
                          elevation: 5.0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.white,
                          action: SnackBarAction(
                            label: "OK",textColor: Colors.teal,
                            onPressed: (){},
                          ),
                        )
                    );
                  });
                },
                caption: "Share",
              )
            ],
            secondaryActions: <Widget>[
              IconSlideAction(
                icon: CupertinoIcons.create,
                color: Colors.white,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Create",style: TextStyle(color: Colors.teal),),
                          elevation: 5.0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.white,
                          action: SnackBarAction(
                            label: "OK",textColor: Colors.teal,
                            onPressed: (){},
                          ),
                        )
                    );
                  });
                },
                caption: "Edit",
              ),
              IconSlideAction(
                icon: CupertinoIcons.delete_simple,
                color: Colors.red,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Delete",style: TextStyle(color: Colors.red),),
                          elevation: 5.0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.white,
                          action: SnackBarAction(
                            label: "OK",textColor: Colors.red,
                            onPressed: (){},
                          ),
                        )
                    );
                  });
                },
                caption: "Delete",
              )
            ],
            direction: Axis.horizontal,
            movementDuration: Duration(seconds: 1),
          ),
          SizedBox(height: 10,),
          Slidable(
            actionPane: SlidableDrawerDismissal(),
            actionExtentRatio: 0.25,
            child: Container(
              color: Colors.orange,
              padding: EdgeInsets.all(5),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: Chip(backgroundColor: Colors.white,label: Text("E",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 10),),),
                ),
                title: Text("Slidable Drawer Action Pane",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
                contentPadding: EdgeInsets.all(10),
                trailing: Icon(
                  CupertinoIcons.delete,color: Colors.white,size: 25,
                ),
              ),
            ),
            actions: <Widget>[
              IconSlideAction(
                icon: CupertinoIcons.home,
                color: Colors.white,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Home",style: TextStyle(color: Colors.teal),),
                          elevation: 5.0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.white,
                          action: SnackBarAction(
                            label: "OK",textColor: Colors.teal,
                            onPressed: (){},
                          ),
                        )
                    );
                  });
                },
                caption: "Home",
              ),
              IconSlideAction(
                icon: CupertinoIcons.share_up,
                color: Colors.cyan,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Share",style: TextStyle(color: Colors.teal),),
                          elevation: 5.0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.white,
                          action: SnackBarAction(
                            label: "OK",textColor: Colors.teal,
                            onPressed: (){},
                          ),
                        )
                    );
                  });
                },
                caption: "Share",
              )
            ],
            secondaryActions: <Widget>[
              IconSlideAction(
                icon: CupertinoIcons.create,
                color: Colors.white,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Create",style: TextStyle(color: Colors.teal),),
                          elevation: 5.0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.white,
                          action: SnackBarAction(
                            label: "OK",textColor: Colors.teal,
                            onPressed: (){},
                          ),
                        )
                    );
                  });
                },
                caption: "Edit",
              ),
              IconSlideAction(
                icon: CupertinoIcons.delete_simple,
                color: Colors.red,
                onTap: (){
                  setState(() {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("Delete",style: TextStyle(color: Colors.red),),
                          elevation: 5.0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.white,
                          action: SnackBarAction(
                            label: "OK",textColor: Colors.red,
                            onPressed: (){},
                          ),
                        )
                    );
                  });
                },
                caption: "Delete",
              )
            ],
            direction: Axis.horizontal,
            movementDuration: Duration(seconds: 1),
          ),
        ],
      ),
    );
  }
}
