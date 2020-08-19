import 'package:creativedesign/Codes/text_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Text_Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Text Box",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Text_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("That Is My Text Style"),
            Divider(height: 10,color: Colors.green,thickness: 1.5,indent: 20,endIndent: 20,),
            Text("That Is My Text Style",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                letterSpacing: 5.0,
              ),
            ),
            Divider(height: 10,color: Colors.blue,thickness: 1.5,indent: 20,endIndent: 20,),
            Text("That Is My Text Style",
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.w500,
                fontSize: 25.0,
                wordSpacing: 10,
                fontFamily: "Times New Roman"
              ),
            ),
            Divider(height: 10,color: Colors.red,thickness: 1.5,indent: 20,endIndent: 20),
            Text("That Is My Text Style",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 25.0,
                  fontStyle: FontStyle.italic,
                  textBaseline: TextBaseline.alphabetic,
                  backgroundColor: Colors.yellow,
              ),
            ),
            Divider(height: 10,color: Colors.pink,thickness: 1.5,indent: 20,endIndent: 20),
            Text("That Is My Text Style ! That Is My Text Style ! That Is My Text Style",
              textDirection: TextDirection.rtl,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.w500,
                  fontSize: 25.0,
                  decoration: TextDecoration.underline,
              ),
            ),
            Divider(height: 10,color: Colors.yellow,thickness: 1.5,indent: 20,endIndent: 20),
            Text("That Is My Text Style ! That Is My Text Style ! That Is My Text Style",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.w500,
                fontSize: 25.0,
                shadows: [Shadow(
                  color: Colors.black87,
                  blurRadius: 18,
                  offset: Offset.zero
                )]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
