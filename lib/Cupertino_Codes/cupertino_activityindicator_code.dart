import 'package:creativedesign/Cupertino/cupertino_activityindicator.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Cupertino_ActivityIndicator_Code extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SyntaxHighlighterStyle style =
    Theme.of(context).brightness == Brightness.dark
        ? SyntaxHighlighterStyle.darkThemeStyle()
        : SyntaxHighlighterStyle.lightThemeStyle();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("CupertinoActivityIndicator",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cupertino_ActivityIndicator()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Future_Builders()));
            },
            icon: Icon(Icons.share,size: 20,color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SelectableText.rich(
            TextSpan(
              style: TextStyle(fontFamily: 'monospace', fontSize: 12.0,decoration: TextDecoration.none,fontWeight: FontWeight.w500,)
                  .apply(fontSizeFactor: 1.1),
              children: <TextSpan>[
                DartSyntaxHighlighter(style).format("""
import 'package:creativedesign/Cupertino_Codes/cupertino_activityindicator_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino_ActivityIndicator extends StatelessWidget {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("CupertinoActivityIndicator",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Cupertino_ActivityIndicator_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CupertinoActivityIndicator(),
            Divider(color: Colors.red,indent: 50,endIndent: 50,thickness: 1.5,),
            CupertinoActivityIndicator(radius: 20,),
            Divider(color: Colors.blue,indent: 50,endIndent: 50,thickness: 1.5,),
            CupertinoActivityIndicator(radius: 30,animating: true,),
            Divider(color: Colors.yellow,indent: 50,endIndent: 50,thickness: 1.5,),
            Container(
              width: 200,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 0.5,
                  blurRadius: 14,
                  offset: Offset(1.0,5.0)
                )],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CupertinoActivityIndicator(
                    radius: 20,animating: true,
                  ),
                  SizedBox(width: 10,),
                  Text("Loading...",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                ],
              ),
            ),
            Divider(color: Colors.pink,indent: 50,endIndent: 50,thickness: 1.5,),
            Container(
              width: 200,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 0.5,
                    blurRadius: 14,
                    offset: Offset(1.0,5.0)
                )],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CupertinoActivityIndicator(
                    radius: 15,animating: true,
                  ),
                  SizedBox(width: 10,),
                  Text("Loading...",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
                ],
              ),
            ),
            Divider(color: Colors.green,indent: 50,endIndent: 50,thickness: 1.5,),
            Container(
              width: 200,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 0.5,
                    blurRadius: 14,
                    offset: Offset(1.0,5.0)
                )],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CupertinoActivityIndicator(
                    radius: 10,animating: true,
                  ),
                  SizedBox(width: 10,),
                  Text("Loading...",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

                """),
              ],
            ),
            style: DefaultTextStyle.of(context)
                .style
                .apply(fontSizeFactor: 1.0),
          ),
        ),
      ),
    );
  }
}
