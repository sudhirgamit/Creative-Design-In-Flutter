import 'package:creativedesign/Cupertino_Codes/cupertino_actionsheet_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino_ActionSheet extends StatefulWidget {
  @override
  _Cupertino_ActionSheetState createState() => _Cupertino_ActionSheetState();
}
class _Cupertino_ActionSheetState extends State<Cupertino_ActionSheet> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  Future<void> _buildActionSheet(){
    return showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context){
          return CupertinoActionSheet(
            title: Text("IOS ActionSheet"),
            message: Text("This Is My First IOS Widget To Used In Flutter"),
            actions: <Widget>[
              CupertinoActionSheetAction(
                onPressed: (){},
                isDefaultAction: true,
                child: Text("Create New Account"),
              ),
              CupertinoActionSheetAction(
                onPressed: (){},
                isDefaultAction: true,
                child: Text("Open Account"),
              ),
              CupertinoActionSheetAction(
                onPressed: (){},
                isDefaultAction: true,
                child: Text("Close Account"),
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: (){
                setState(() {
                  Navigator.pop(context,"Close");
                });
              },
              isDefaultAction: true,
              child: Text("Cancel"),
            ),
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("CupertinoActionSheet",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Cupertino_ActionSheet_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: CupertinoButton(
          onPressed: (){
            setState(() {
              _buildActionSheet();
            });
          },
          padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
          child: Text("CupertinoActionSheet IOS",style: TextStyle(fontSize: 16),),
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
