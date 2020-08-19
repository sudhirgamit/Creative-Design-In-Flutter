import 'package:creativedesign/Cupertino_Codes/cupertino_button_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino_Button extends StatefulWidget {
  @override
  _Cupertino_ButtonState createState() => _Cupertino_ButtonState();
}
class _Cupertino_ButtonState extends State<Cupertino_Button> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Cupertino Button",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Cupertino_Button_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CupertinoButton(
              child: Text("iPhone"),
              color: Colors.lightGreen,
              onPressed: (){
                setState(() {
                  _scaffoldKey.currentState.showSnackBar(
                    SnackBar(
                      content: Text("LightGreen iPhone"),
                      action: SnackBarAction(
                        onPressed: (){
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        label: "OK",
                        textColor: Colors.white,
                      ),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.lightGreen,
                      elevation: 5.0,
                      duration: Duration(seconds: 3),
                    ),
                  );
                });
              },
            ),
            Divider(indent: 50,endIndent: 50,thickness: 1.5,color: Colors.teal,height: 50,),
            CupertinoButton(
              child: Text("iPhone Disable"),
              disabledColor: Colors.blueGrey,
            ),
            Divider(indent: 50,endIndent: 50,thickness: 1.5,color: Colors.blueAccent,height: 50),
            CupertinoButton(
              child: Text("iPhone"),
              color: Colors.blueAccent,
              onPressed: (){
                setState(() {
                  _scaffoldKey.currentState.showSnackBar(
                    SnackBar(
                      content: Text("BlueAccent iPhone"),
                      action: SnackBarAction(
                        onPressed: (){
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        label: "OK",
                        textColor: Colors.white,
                      ),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.blueAccent,
                      elevation: 5.0,
                      duration: Duration(seconds: 3),
                    ),
                  );
                });
              },
              minSize: 60,
            ),
            Divider(indent: 50,endIndent: 50,thickness: 1.5,color: Colors.blue,height: 50),
            CupertinoButton(
              child: Text("iPhone"),
              color: Colors.green,
              onPressed: (){
                setState(() {
                  _scaffoldKey.currentState.showSnackBar(
                    SnackBar(
                      content: Text("Green iPhone"),
                      action: SnackBarAction(
                        onPressed: (){
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        label: "OK",
                        textColor: Colors.white,
                      ),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.green,
                      elevation: 5.0,
                      duration: Duration(seconds: 3),
                    ),
                  );
                });
              },
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            Divider(indent: 50,endIndent: 50,thickness: 1.5,color: Colors.green,height: 50),
            CupertinoButton(
              child: Text("iPhone"),
              color: Colors.teal,
              onPressed: (){
                setState(() {
                  _scaffoldKey.currentState.showSnackBar(
                    SnackBar(
                      content: Text("Teal iPhone"),
                      action: SnackBarAction(
                        onPressed: (){
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        label: "OK",
                        textColor: Colors.white,
                      ),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.teal,
                      elevation: 5.0,
                      duration: Duration(seconds: 3),
                    ),
                  );
                });
              },
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 110),
            ),
          ],
        ),
      ),
    );
  }
}
