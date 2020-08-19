import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Future_Builder_Data extends StatefulWidget {
  @override
  _Future_Builder_DataState createState() => _Future_Builder_DataState();
}

class _Future_Builder_DataState extends State<Future_Builder_Data> {

  var url ="https://jsonplaceholder.typicode.com/photos";

  Future getData() async{
    var res = await http.get(url);
    var data = jsonDecode(res.body);
    print(data);
    return data;
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: FutureBuilder(
        future: getData(),
        builder: (context, snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.none:
              return Center(child: Text("Fetch something"),);
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator(backgroundColor: Colors.blue,strokeWidth: 1.5,));
            case ConnectionState.done:
              if(snapshot.hasError){
                return Center(child: Text("Some Reason of error"),);
              }
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index){
                    return ListTile(
                      title: Text(snapshot.data[index]["title"]),
                    );
                  },
              );
          }
        },
      ),
    );
  }
}
