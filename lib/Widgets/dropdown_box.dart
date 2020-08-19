import 'package:creativedesign/Codes/dropdown_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import "package:flutter/material.dart";

class DropDown_Box extends StatefulWidget {
  @override
  _DropDown_BoxState createState() => _DropDown_BoxState();
}

class _DropDown_BoxState extends State<DropDown_Box> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  static const _dropdown= <String>[
    "Sunday","Monday","Tuesday","Wednessday","Thusday","Friday","Saturday",
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItem = _dropdown.map(
      (String val)=>DropdownMenuItem<String>(
        child: Text(val),
        value: val,
      )
  ).toList();

  static const _popup= <String>[
    "Rahul","Amit","Tanay","Vijay","Kajal","Jenny","Vidya",
  ];
  final List<PopupMenuItem<String>> _popupMenuItem = _popup.map(
          (String val)=>PopupMenuItem<String>(
        child: Text(val),
        value: val,
      )
  ).toList();

  String btn1="Saturday";
  String btn2; String btn3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("DropDown Box",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DropDown_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                color: Colors.blue,
                child: ListTile(
                  title: Text("DropDownMenuItem List : 1",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                  subtitle: DropdownButton(
                    isExpanded: true,
                    style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500,letterSpacing: 2),
                    items: _dropDownMenuItem,
                    isDense: true,
                    iconSize: 30,
                    value: btn1,
                    onChanged: (String newval){
                      setState(() {
                        btn1 = newval;
                        _scaffoldKey.currentState.showSnackBar(
                          SnackBar(
                            content: Text(btn1.toString(),style: TextStyle(color: Colors.white),),
                            action: SnackBarAction(label: "Ok",textColor: Colors.white,onPressed: (){},),
                            backgroundColor: Colors.red,
                            behavior: SnackBarBehavior.floating,
                            duration: Duration(seconds: 3),
                          ),
                        );
                      });
                    },
                  ),
                ),
              ),
              Card(
                color: Colors.blue,
                child: ListTile(
                  title: Text("DropDownMenuItem List : 2",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                  subtitle: DropdownButton(
                    icon: Icon(Icons.arrow_drop_down_circle),
                    focusColor: Colors.black,
                    isDense: true,
                    iconEnabledColor: Colors.white,
                    value: btn3,
                    hint: Text("Choose Your Item  "),
                    elevation: 20,
                    focusNode: FocusNode(canRequestFocus: true),
                    style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),
                    items: _dropDownMenuItem,
                    underline: Container(),
                    iconSize: 30,
                    onChanged: (String newval){
                      setState(() {
                        btn3 = newval;
                        _scaffoldKey.currentState.showSnackBar(
                          SnackBar(
                            content: Text(btn3.toString(),style: TextStyle(color: Colors.white),),
                            action: SnackBarAction(label: "Ok",textColor: Colors.white,onPressed: (){},),
                            backgroundColor: Colors.red,
                            behavior: SnackBarBehavior.floating,
                            duration: Duration(seconds: 3),
                          ),
                        );
                      });
                    },
                  ),
                ),
              ),
              Divider(color: Colors.white,),
              Card(
                color: Colors.blue,
                child: ListTile(
                  title: Text("PopupMenuItem List : 1",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                  trailing:  PopupMenuButton(
                    itemBuilder: (BuildContext context)=> _popupMenuItem,
                    onSelected: (String newval){
                      setState(() {
                        btn2 = newval;
                        _scaffoldKey.currentState.showSnackBar(
                          SnackBar(
                            content: Text(btn2.toString(),style: TextStyle(color: Colors.white),),
                            action: SnackBarAction(label: "Ok",textColor: Colors.white,onPressed: (){},),
                            backgroundColor: Colors.red,
                            behavior: SnackBarBehavior.floating,
                            duration: Duration(seconds: 3),
                          ),
                        );
                      });
                    },
                  )
                ),
              ),
              Card(
                color: Colors.blue,
                child: ListTile(
                    title: Text("PopupMenuItem List : 2",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                    trailing:  PopupMenuButton(
                      itemBuilder: (BuildContext context)=> _popupMenuItem,
                      color: Colors.blueGrey,
                      elevation: 10,
                      tooltip: "Menu",
                      padding: EdgeInsets.all(10),
                      shape: Border.all(color: Colors.white,width: 5,style: BorderStyle.solid),
                      icon: Icon(Icons.view_list,color: Colors.white,),
                      onSelected: (String newval){
                        setState(() {
                          btn2 = newval;
                          _scaffoldKey.currentState.showSnackBar(
                            SnackBar(
                              content: Text(btn2.toString(),style: TextStyle(color: Colors.white),),
                              action: SnackBarAction(label: "Ok",textColor: Colors.white,onPressed: (){},),
                              backgroundColor: Colors.red,
                              behavior: SnackBarBehavior.floating,
                              duration: Duration(seconds: 3),
                            ),
                          );
                        });
                      },
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
