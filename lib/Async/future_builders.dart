import 'dart:convert';
import 'package:creativedesign/Async_Codes/future_builders_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Future_Builders extends StatefulWidget {
  @override
  _Future_BuildersState createState() => _Future_BuildersState();
}
class _Future_BuildersState extends State<Future_Builders> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  var url ="https://jsonplaceholder.typicode.com/photos";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getFutureData();
  }
  Future getFutureData() async {
    var res = await http.get(url);
    var data = jsonDecode(res.body);
    return data;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Future Builder",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Future_Builders_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: getFutureData(),
        builder: (context,snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.none:
              return Center(child: Text("Some Data Has Been Fetch..."),);
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator(backgroundColor: Colors.red,strokeWidth: 2.5,valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)));
            case ConnectionState.done:
              if(snapshot.hasError){
                return Center(child: Text("Technical Error"),);
              }
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemCount: snapshot.data.length,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.all(12),
                itemBuilder: (context, index){
                  return Card(
                    child:GridTile(
                      header: Image.network(snapshot.data[index]["url"]),
                      footer: Text(snapshot.data[index]["title"],style: TextStyle(color: Colors.white,fontSize: 18),textAlign: TextAlign.center,maxLines: 2,overflow: TextOverflow.ellipsis,),
                      child: Text(snapshot.data[index]["id"].toString()),
                    ),
                  );
                },
              );
          }
        },
      )
    );
  }
}
