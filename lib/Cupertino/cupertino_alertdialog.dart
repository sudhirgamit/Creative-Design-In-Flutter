import 'package:creativedesign/Cupertino_Codes/cupertino_alertdialog_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino_AlertDialog extends StatefulWidget {
  @override
  _Cupertino_AlertDialogState createState() => _Cupertino_AlertDialogState();
}
class _Cupertino_AlertDialogState extends State<Cupertino_AlertDialog> {
  Future<void> _builderAlertDialog(){
    return showCupertinoDialog<void>(
        context: context,
        builder: (BuildContext context){
          return CupertinoAlertDialog(
            title: Text("Permission"),
            content: Text("The permission of access camera to select \"Allow\" or \"Don't allow\" "),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text("Don't allow"),
                onPressed: (){
                  setState(() {
                    Navigator.pop(context,"Don't allow");
                  });
                },
              ),
              CupertinoDialogAction(
                child: Text("Allow"),
                onPressed: (){
                  setState(() {
                    Navigator.pop(context,"Allow");
                  });
                },
              )
            ],
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("CupertinoAlertDialog",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Cupertino_AlertDialog_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: CupertinoButton(
          child: Text("Cupertion AlertDialog",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 16),),
          onPressed: (){
            setState(() {
              _builderAlertDialog();
            });
          },
          color: Colors.orange,
          padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
        ),
      ),
    );
  }
}
