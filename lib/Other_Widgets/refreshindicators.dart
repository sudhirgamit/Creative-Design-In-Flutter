import 'package:creativedesign/Other_Widgets_Codes/refreshindicator_code.dart';
import 'package:creativedesign/Pages/advance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RefreshIndicators extends StatefulWidget {
  @override
  _RefreshIndicatorsState createState() => _RefreshIndicatorsState();
}
class _RefreshIndicatorsState extends State<RefreshIndicators> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("RefreshIndicator",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Advance()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RefreshIndicator_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: () async{
          return await Future.delayed(Duration(seconds: 3));
        },
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index){
              return ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                leading: Icon(CupertinoIcons.person),
                title: Text("Items : ${index}"),
                trailing: Icon(CupertinoIcons.check_mark),
              );
            }
        ),
      ),
    );
  }
}
