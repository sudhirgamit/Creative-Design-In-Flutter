import 'package:creativedesign/Codes/aligns_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Aligns extends StatefulWidget {
  @override
  _AlignsState createState() => _AlignsState();
}

class _AlignsState extends State<Aligns> {
  final _scaffoldkey = new GlobalKey<ScaffoldState>();
  AlignmentDirectional _alignmentDirectional = AlignmentDirectional.topStart;
  Widget getBottomBar(){
    const _alignment = <String, AlignmentDirectional>{
      'topStart' : AlignmentDirectional.topStart,
      'topCenter' : AlignmentDirectional.topCenter,
      'topEnd' : AlignmentDirectional.topEnd,
      'centerStart' : AlignmentDirectional.centerStart,
      'center' : AlignmentDirectional.center,
      'centerEnd' : AlignmentDirectional.centerEnd,
      'bottomStart' : AlignmentDirectional.bottomStart,
      'bottomCenter' : AlignmentDirectional.bottomCenter,
      'bottomEnd' : AlignmentDirectional.bottomEnd,
    };
    return Material(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Text("AlignmentDirectional : "),
            trailing: DropdownButton<AlignmentDirectional>(
              value: _alignmentDirectional,
              onChanged: (AlignmentDirectional val){
                if(val != null){
                  setState(() {
                    _alignmentDirectional=val;
                  });
                }
              },
              items: _alignment.map((String name, AlignmentDirectional value)=>MapEntry(
                name,DropdownMenuItem(value: value,child: Text(name),)
              )).values.toList(),
            ),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Align Box",style: TextStyle(color: Colors.black,),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Aligns_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,top: 10,right: 10,bottom: 80),
        child: Align(
          alignment: _alignmentDirectional,
          child: Container(
            height: 200,width: 200,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/Screen.jpg"),
                fit: BoxFit.fill,
              ),
              boxShadow: [BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 12,
                spreadRadius: 3.4,
                offset: Offset(
                  10.7,10.7
                )
              )],
              border: Border.all(width: 3,color: Colors.white)
            ),
          ),
        ),
      ),
      bottomSheet: getBottomBar(),
    );
  }
}
