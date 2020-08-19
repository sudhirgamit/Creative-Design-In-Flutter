import 'package:creativedesign/AppBar_Codes/sliver_appbar_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Sliver_AppBar extends StatefulWidget {
  @override
  _Sliver_AppBarState createState() => _Sliver_AppBarState();
}

class _Sliver_AppBarState extends State<Sliver_AppBar> {
  final _scaffoldkey = new GlobalKey<ScaffoldState>();
  bool _pinned = true; bool _floating = false; bool _snap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldkey,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: _pinned,
            floating: _floating,
            snap: _snap,
            expandedHeight: 200,
            leading: IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
              icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Sliver Appbar",style: TextStyle(color: Colors.black),),
              centerTitle: true,
              background: Image.asset("assets/as.jpg",fit: BoxFit.fill,),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Sliver_AppBar_Code()));
                },
                icon: Icon(Icons.transfer_within_a_station,size: 25, color: Colors.black,),
              )
            ],
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Text("SliverAppBar Property"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Checkbox(
                      onChanged: (bool val){
                        setState(() {
                         _pinned = val;
                        });
                      },
                      value: _pinned,
                      activeColor: Colors.red,
                      checkColor: Colors.orange,
                    ),
                    Text("Pinned"),
                    Checkbox(
                      onChanged: (bool val){
                        setState(() {
                          _floating = val;
                          _snap = val;
                        });
                      },
                      value: _floating,
                      activeColor: Colors.red,
                      checkColor: Colors.orange,
                    ),
                    Text("Floating"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
