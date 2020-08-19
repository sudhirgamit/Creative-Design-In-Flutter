import 'dart:convert';
import 'package:creativedesign/Async_Codes/listview_builders_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListView_Builders extends StatefulWidget {
  @override
  _ListView_BuildersState createState() => _ListView_BuildersState();
}

class _ListView_BuildersState extends State<ListView_Builders> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  Future getData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("ListView Builder",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ListView_Builders_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: data!=null ? Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index){
                  return Card(
                    color: Colors.blue,
                    child: ListTile(
                      leading: Image.network(data[index]["url"]),
                      title: Text(data[index]["title"],style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white)),
                      subtitle: Text(data[index]["id"].toString()),
                      trailing: Icon(Icons.edit,color: Colors.white,),
                    ),
                  );
                },
            ),
      )
          : Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.white,
            strokeWidth: 2.5,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
          ),
      )
    );
  }
}
