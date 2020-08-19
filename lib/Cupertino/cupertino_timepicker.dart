import 'package:creativedesign/Cupertino_Codes/cupertino_timepicker_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino_TimePicker extends StatefulWidget {
  @override
  _Cupertino_TimePickerState createState() => _Cupertino_TimePickerState();
}
class _Cupertino_TimePickerState extends State<Cupertino_TimePicker> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Cupertino TimePicker",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Cupertino_TimePicker_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Min And Sec"),
            Container(
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  boxShadow: [BoxShadow(
                      color: Colors.black,
                      blurRadius: 12,
                      offset: Offset(1.0,5.0),
                      spreadRadius: 0.5
                  )]
              ),
              child: CupertinoTimerPicker(
                mode: CupertinoTimerPickerMode.ms,
                onTimerDurationChanged: (val){},
                backgroundColor: Colors.orange,
              ),
            ),
            Text("Hours And Min"),
            Container(
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                      color: Colors.black,
                      blurRadius: 12,
                      offset: Offset(1.0,5.0),
                      spreadRadius: 0.5
                  )]
              ),
              child: CupertinoTimerPicker(
                mode: CupertinoTimerPickerMode.hm,
                onTimerDurationChanged: (val){},
                backgroundColor: Colors.white,
              ),
            ),
            Text("Hours,Min And Sec"),
            Container(
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  boxShadow: [BoxShadow(
                      color: Colors.black,
                      blurRadius: 12,
                      offset: Offset(1.0,5.0),
                      spreadRadius: 0.5
                  )]
              ),
              child: CupertinoTimerPicker(
                mode: CupertinoTimerPickerMode.hms,
                onTimerDurationChanged: (val){},
                backgroundColor: Colors.indigoAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
