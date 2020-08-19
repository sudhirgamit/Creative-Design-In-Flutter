import 'package:creativedesign/Navigation_Codes/tabs_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text("Tab Bar",style: TextStyle(color: Colors.black),),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Tabs_Code()));
                },
                icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
              )
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.blueGrey,
              tabs: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(Icons.home,size: 30,color: Colors.blueGrey,),
                    Text("Home")
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.person,size: 30,color: Colors.blueGrey,),
                    Text("Person")
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.location_city,size: 30,color: Colors.blueGrey,),
                    Text("City")
                  ],
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.home,size: 100,color: Colors.blue,),
                  Text("That's My Home")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.person,size: 100,color: Colors.blue,),
                    Text("That's A Person")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.location_city,size: 100,color: Colors.blue,),
                  Text("That's My City")
                ],
              ),
            ],
          ),
        )
    );
  }
}
