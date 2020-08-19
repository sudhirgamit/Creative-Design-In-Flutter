import 'package:creativedesign/AppBar_Codes/custom_appbar_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Custom_AppBar extends StatefulWidget {
  @override
  _Custom_AppBarState createState() => _Custom_AppBarState();
}

class _Custom_AppBarState extends State<Custom_AppBar> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Custom AppBar",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Custom_AppBar_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black,),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 30,left: 10,right: 10),
            height: 90,
            width: MediaQuery.of(context).size.width,
            child: Card(
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
                    onPressed: (){
                      setState(() {

                      });
                    },
                  ),
                  Text("Custom AppBar",style: TextStyle(color: Colors.white60,fontSize: 20),),
                  IconButton(
                    icon: Icon(Icons.keyboard_voice,color: Colors.white60,),
                    onPressed: (){

                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30,left: 10,right: 10),
            height: 90,
            width: MediaQuery.of(context).size.width,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: (){
                      setState(() {

                      });
                    },
                  ),
                  Text("Custom AppBar",style: TextStyle(color: Colors.black,fontSize: 20),),

                  IconButton(
                    icon: Icon(Icons.transfer_within_a_station),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30,left: 10,right: 10),
            height: 90,
            width: MediaQuery.of(context).size.width,
            child: Card(
              color: Colors.orange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.menu,color: Colors.white,),
                    onPressed: (){
                      setState(() {

                      });
                    },
                  ),
                  Text("Custom AppBar",style: TextStyle(color: Colors.white60,fontSize: 20),),
                  IconButton(
                    icon: Icon(Icons.search,color: Colors.white60,),
                    onPressed: (){

                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.transfer_within_a_station,color: Colors.white,),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30,left: 10,right: 10),
            height: 90,
            width: MediaQuery.of(context).size.width,
            child: Card(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.orange,Colors.green],

                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
                      onPressed: (){},
                    ),
                    SizedBox(width: 10,),
                    Text("Custom AppBar",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
