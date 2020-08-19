import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Fetch_Gridview extends StatefulWidget {
  @override
  _Fetch_GridviewState createState() => _Fetch_GridviewState();
}

class _Fetch_GridviewState extends State<Fetch_Gridview> {

  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState(){
    super.initState();
    getData();
  }

  getData() async{
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {

    });
    print(data);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: data!=null ? GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3
          ),
          itemCount: data.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                //title: Text(data[index]["title"],style: TextStyle(fontWeight: FontWeight.w700),),
                leading: Image.network(data[index]["url"]),
                //subtitle: Text("Id : ${data[index]["id"]}"),
                //trailing: Icon(Icons.edit),
              ),
            );
          }
      )
          : Center(child: CircularProgressIndicator(backgroundColor: Colors.red,strokeWidth: 2.5,valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
      )),
    );
  }
}
