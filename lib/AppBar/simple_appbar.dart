import 'package:creativedesign/AppBar_Codes/simple_appbar_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Simple_AppBar extends StatefulWidget {
  @override
  _Simple_AppBarState createState() => _Simple_AppBarState();
}

class _Simple_AppBarState extends State<Simple_AppBar> {
  final _scaffoldkey = new GlobalKey<ScaffoldState>();
  bool show_hide = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldkey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Simple AppBar",style: TextStyle(color: Colors.black),),
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
              setState(() {
                show_hide = true;
              });
            },
            icon: Icon(Icons.wallpaper,size: 25,color: Colors.black),
          ),
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Simple_AppBar_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
                onTap: (){
                  setState(() { show_hide = false;});
                  },
                 child: show_hide ? Image.asset("assets/CD.png",height: 200,width: 200,) : Container(),
            ),
            show_hide ? Text("Please Click Image...") : Text("Please Click AppBar Image Icon..."),
          ],
        )
      ),
    );
  }
}
