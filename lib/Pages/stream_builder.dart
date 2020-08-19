import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Stream_Builder extends StatefulWidget {
  @override
  _Stream_BuilderState createState() => _Stream_BuilderState();
}

class _Stream_BuilderState extends State<Stream_Builder> {

  bool same = false;
  var url = "https://jsonplaceholder.typicode.com/photos";
  Future getData() async {
    var res = await http.get(url);
    var data = jsonDecode(res.body);
    //print(data);
    return data;
  }

  Stream<List<String>> getStreamData() {
    var data = Stream<List<String>>.fromIterable(
      [List<String>.generate(20, (index)=>"Item $index")]
    );
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Creative Design"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            same = true;
          });
        },
        child: Icon(Icons.refresh),
        tooltip: "Refresh",
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: StreamBuilder(
        stream: same!=true ? null:getStreamData(),
        builder: (context, snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.none:
              return Center(child: Text("Fetch Something"),);
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator(backgroundColor: Colors.black, valueColor: AlwaysStoppedAnimation<Color>(Colors.red), strokeWidth: 2.5,),);
            case ConnectionState.done:
              if(snapshot.hasError) {
                return Center(child: Text("Some Error Occured"),);
              }
              return ListView.builder(
                itemCount:  snapshot.data.length,
                itemBuilder: (context,index){
                  return Card(
                    child: ListTile(
                      title: Text(snapshot.data[index],style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),),
                    ),
                  );
                },
              );
          }
        },
      ),
    );
  }
}
