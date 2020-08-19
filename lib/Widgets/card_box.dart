import 'package:creativedesign/Codes/card_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Card_Box extends StatelessWidget {
  final _scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Card With Inkwell Box",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Card_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black,),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                color: Colors.orange,
                child: Container(
                    height: 150, width: 400,
                ),
              ),

              InkWell(
                onTap: (){
                  _scaffoldkey.currentState.showSnackBar(
                    SnackBar(
                      content: Text("      I Love My India",textAlign: TextAlign.center,style: TextStyle(color: Colors.orange,fontSize: 25,fontWeight: FontWeight.bold),),
                      action: SnackBarAction(label: "",textColor: Colors.white,onPressed: (){},),
                      backgroundColor: Colors.white,
                      behavior: SnackBarBehavior.floating,
                      duration: Duration(seconds: 3),
                    ),
                  );
                },
                child: Card(
                  color: Colors.white,
                  child: Container(
                      height: 150,
                      width: 400,
                      alignment: Alignment.center,
                      child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Ashoka_Chakra_1.svg/768px-Ashoka_Chakra_1.svg.png")
                  ),
                ),
              ),

              Card(
                color: Colors.green,
                child: Container(
                    height: 150, width: 400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
