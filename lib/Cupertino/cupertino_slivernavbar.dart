import 'package:creativedesign/Cupertino_Codes/cupertino_slivernavbar_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino_SliverNavBar extends StatefulWidget {
  @override
  _Cupertino_SliverNavBarState createState() => _Cupertino_SliverNavBarState();
}
class _Cupertino_SliverNavBarState extends State<Cupertino_SliverNavBar> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _pinned = true; bool _floating = false; bool _snap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            leading: CupertinoNavigationBarBackButton(
              previousPageTitle: "Prev",
              color: CupertinoColors.black,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
            ),
            trailing: IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cupertino_SliverNavBar_Code()));
              },
              icon: Icon(Icons.transfer_within_a_station,size: 25, color: Colors.black,),
            ),
            middle: Text("CupertinoSliverNavBar"),
            largeTitle: Text("iPhone And Apple",textAlign: TextAlign.center,style: TextStyle(fontSize: 30,color: CupertinoColors.activeBlue),),
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CupertinoButton(
                    child: Text("iPhone"),
                    onPressed: (){},
                    color: Colors.lightGreen,
                ),
                Divider(height: 100,indent: 50,endIndent: 50,thickness: 1.5,color: CupertinoColors.systemBlue,),
                CupertinoButton.filled(
                    child: Text("Apple "),
                    onPressed: (){}
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
