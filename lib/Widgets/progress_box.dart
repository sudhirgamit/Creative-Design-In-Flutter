import 'package:creativedesign/Codes/progress_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Progress_Box extends StatelessWidget {
  final _scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Progress Box",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Progress_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("CircularProgressIndicator"),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircularProgressIndicator(),
                  CircularProgressIndicator(backgroundColor: Colors.green,valueColor: AlwaysStoppedAnimation<Color>(Colors.red),),
                  CircularProgressIndicator(backgroundColor: Colors.orange,valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),strokeWidth: 1.5,),
                ],
              ),
              Divider(indent: 10,endIndent: 10,thickness: 2.5,color: Colors.blue,),
              Text("LinearProgressIndicator"),
              SizedBox(height: 20,),
              LinearProgressIndicator(),
              LinearProgressIndicator(backgroundColor: Colors.orange,valueColor: AlwaysStoppedAnimation<Color>(Colors.green)),
            ],
          ),
        ),
      ),
    );
  }
}
