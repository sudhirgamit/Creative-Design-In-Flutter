import 'package:creativedesign/Async_Codes/stream_builders_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Stream_Builders extends StatefulWidget {
  @override
  _Stream_BuildersState createState() => _Stream_BuildersState();
}
class _Stream_BuildersState extends State<Stream_Builders> {
  Stream<List<String>> getStreamData() {
    var data = Stream<List<String>>.fromIterable(
        [List<String>.generate(20, (index)=>index.toString())]
    );
    return data;
  }
  bool same = false;
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Stream Builder",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Stream_Builders_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StreamBuilder(
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
                      color: Colors.grey,
                      child: ListTile(
                        leading: Text("Items : ",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500),),
                        trailing: Text(snapshot.data[index],style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500),),
                      ),
                    );
                  },
                );
            }
          },
        ),
      ),
    );
  }
}

