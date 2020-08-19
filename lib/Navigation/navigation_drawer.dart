import 'package:creativedesign/Navigation_Codes/navigation_drawer_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Navigation_Drawer extends StatefulWidget {
  @override
  _Navigation_DrawerState createState() => _Navigation_DrawerState();
}

class _Navigation_DrawerState extends State<Navigation_Drawer> {
  final _scaffoldKey =new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Drawer Navigation",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Navigation_Drawer_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          ),
        ],
      ),
      drawerEdgeDragWidth: 100,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503249023995-51b0f3778ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              ),
              accountName: Text("Gamit Sudhir"),
              accountEmail: Text("sudhirgamit@gmail.com"),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1500856056008-859079534e9e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                children: <Widget>[
                  Card(
                    color: Colors.blueGrey,
                    child: ListTile(
                      onTap: (){},
                      leading: Icon(Icons.home,color: Colors.white,),
                      title: Text("HOME",style: TextStyle(color: Colors.white),),
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 18,),
                    ),
                  ),
                  Card(
                    color: Colors.blueGrey,
                    child: ListTile(
                      onTap: (){},
                      leading: Icon(Icons.account_balance,color: Colors.white,),
                      title: Text("Account",style: TextStyle(color: Colors.white),),
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 18,),
                    ),
                  ),
                  Card(
                    color: Colors.blueGrey,
                    child: ListTile(
                      onTap: (){},
                      leading: Icon(Icons.share,color: Colors.white,),
                      title: Text("Share",style: TextStyle(color: Colors.white),),
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 18,),
                    ),
                  ),
                  Card(
                    color: Colors.blueGrey,
                    child: ListTile(
                      onTap: (){},
                      leading: Icon(Icons.room_service,color: Colors.white,),
                      title: Text("Teams & Condition",style: TextStyle(color: Colors.white),),
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 18,),
                    ),
                  ),
                  Card(
                    color: Colors.blueGrey,
                    child: ListTile(
                      onTap: (){},
                      leading: Icon(Icons.feedback,color: Colors.white,),
                      title: Text("About Us",style: TextStyle(color: Colors.white),),
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 18,),
                    ),
                  ),
                  Card(
                    color: Colors.blueGrey,
                    child: ListTile(
                      onTap: (){},
                      leading: Icon(Icons.help,color: Colors.white,),
                      title: Text("Help",style: TextStyle(color: Colors.white),),
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 18,),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.red,
              child: ListTile(
                onTap: (){},
                leading: Icon(Icons.exit_to_app,color: Colors.white,),
                title: Text("Logout",style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
            width: 160, height: 150,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              shape: BoxShape.circle
            ),
            child: IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
              icon: Icon(Icons.arrow_back_ios,size: 50,color: Colors.white),
            ),
        ),
      ),
    );
  }
}

