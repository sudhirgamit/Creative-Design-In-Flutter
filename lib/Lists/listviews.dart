import 'package:creativedesign/Lists_Codes/listviews_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class ListViews extends StatefulWidget {
  @override
  _ListViewsState createState() => _ListViewsState();
}
class _ListViewsState extends State<ListViews> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("ListView & ListTile",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ListViews_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          reverse: false,
          physics: ScrollPhysics(),
          children: <Widget>[
            Card(
              color: Colors.white70,
              child: ListTile(
                onTap: (){},
                leading: Icon(Icons.person),
                title: Text("Sample ListTile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                subtitle: Text("Data has been simple"),
                trailing: Icon(Icons.next_week),
              ),
            ),
            Card(
              color: Colors.white70,
              child: ListTile(
                onTap: (){},
                leading: Icon(Icons.person),
                title: Text("Selected ListTile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                subtitle: Text("Data has been simple"),
                trailing: Icon(Icons.next_week),
                selected: true,
              ),
            ),
            Card(
              color: Colors.white70,
              child: ListTile(
                onTap: (){},
                leading: Icon(Icons.person),
                title: Text("Dense ListTile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                subtitle: Text("Data has been simple"),
                trailing: Icon(Icons.next_week),
                dense: true,
              ),
            ),
            Card(
              color: Colors.white70,
              child: ListTile(
                onTap: (){},
                leading: Icon(Icons.person),
                title: Text("Enabled ListTile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                subtitle: Text("Data has been simple"),
                trailing: Icon(Icons.next_week),
                enabled: true,
              ),
            ),
            Card(
              color: Colors.white70,
              child: ListTile(
                onTap: (){},
                leading: Icon(Icons.person),
                title: Text("ThreeLine ListTile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                subtitle: Text("Data has been simple"),
                trailing: Icon(Icons.next_week),
                isThreeLine: true,
              ),
            ),
            Card(
              color: Colors.white70,
              child: ListTile(
                onTap: (){},
                leading: Icon(Icons.person),
                title: Text("ContentPadding ListTile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                subtitle: Text("Data has been simple"),
                trailing: Icon(Icons.next_week),
                contentPadding: EdgeInsets.all(20),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
