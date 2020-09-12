import 'package:creativedesign/Layouts_Codes/flexibles_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Flexibles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Flexible Layouts",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Flexibles_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
         children: <Widget>[
           Flexible(
             flex: 2,
             fit: FlexFit.tight,
             child: Container(
               color: Colors.cyan,
               alignment: AlignmentDirectional.center,
               child: Text("Flex : 2",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
             ),
           ),
           Flexible(
             flex: 1,
             fit: FlexFit.tight,
             child: Container(
               color: Colors.lightGreen,
               alignment: AlignmentDirectional.center,
               child: Text("Flex : 1",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
             ),
           ),
           Flexible(
             flex: 3,
             fit: FlexFit.tight,
             child: Container(
               color: Colors.blue,
               alignment: AlignmentDirectional.center,
               child: Text("Flex : 3",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
             ),
           ),
           Flexible(
             flex: 2,
             fit: FlexFit.tight,
             child: Container(
               color: Colors.teal,
               alignment: AlignmentDirectional.center,
               child: Text("Flex : 2",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
             ),
           ),
           Flexible(
             flex: 4,
             fit: FlexFit.tight,
             child: Container(
               color: Colors.orange,
               alignment: AlignmentDirectional.center,
               child: Text("Flex : 4",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
             ),
           ),
         ],
        ),
      ),
    );
  }
}
