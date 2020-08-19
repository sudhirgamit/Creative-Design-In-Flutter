import 'package:creativedesign/Navigation_Codes/bottom_navigation_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Bottom_Navigation extends StatefulWidget {
  @override
  _Bottom_NavigationState createState() => _Bottom_NavigationState();
}

class _Bottom_NavigationState extends State<Bottom_Navigation> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _currentindex = 0;
  final _bottomItem = <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home")),
    BottomNavigationBarItem(icon: Icon(Icons.bookmark),title: Text("Booking")),
    BottomNavigationBarItem(icon: Icon(Icons.account_balance),title: Text("My Accont")),
    BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("Profile")),
  ];
  final _showBody = <Widget>[
    Center(child: Text("Home",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),)),
    Center(child: Text("Booking",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),)),
    Center(child: Text("My Account",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),)),
    Center(child: Text("Profile",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Bottom Navigation",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_Navigation_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black,),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: _showBody[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.teal,
        showSelectedLabels: true,
        items: _bottomItem,
        currentIndex: _currentindex,
        onTap: (int index){
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
