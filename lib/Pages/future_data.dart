import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Future_Data extends StatefulWidget {
  @override
  _Future_DataState createState() => _Future_DataState();
}

class _Future_DataState extends State<Future_Data> {

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
    setState(() {

    });
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Creative Design"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: data!=null ? ListView.builder(
          itemCount:  data.length,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                title: Text(data[index]["title"],style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),),
                subtitle: Text("Id : ${data[index]["id"]}"),
                leading: Image.network(data[index]["url"]),
                trailing: Icon(Icons.edit),
              ),
            );
          },
        )
            : Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.black,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            strokeWidth: 2.5,
          ),
        ),
      ),
    );
  }
}
