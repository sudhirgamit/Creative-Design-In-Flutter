import 'package:creativedesign/Layouts/stacks.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Stacks_Code extends StatelessWidget {
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
        title: Text("Stack Layouts",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Stacks()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Layouts/stacks.dart");
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
import 'dart:io';
import 'package:creativedesign/Layouts_Codes/stacks_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Stacks extends StatefulWidget {
  @override
  _StacksState createState() => _StacksState();
}
class _StacksState extends State<Stacks> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  AlignmentDirectional _alignmentDirectional= AlignmentDirectional.center;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Stack Layouts"),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Stacks_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25),
          )
        ],
      ),
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(height: 10,),
              Stack(
                alignment: _alignmentDirectional,
                children: <Widget>[
                  Container(
                    height: 150,
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blueGrey,
                  ),
                  CircleAvatar(
                      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503249023995-51b0f3778ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",),
                      maxRadius: 40,
                  ),
                  Positioned(
                    left: 130, right: 90, bottom: 90, top: 90,
                    child: Icon(
                      Icons.add_a_photo,
                      size: 30,color: Colors.white,
                    )
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Stack(
                alignment: _alignmentDirectional,
                children: <Widget>[
                  Container(
                    height: 150,
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.email),
                    color: Colors.black,
                    iconSize: 100,
                  ),
                  Positioned(
                      left: 100, right: 50, bottom: 70, top: 30,
                      child: CircleAvatar(
                        child: Text("99+"),
                        maxRadius: 20,
                        backgroundColor: Colors.red,
                      )
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Stack(
                alignment: _alignmentDirectional,
                children: <Widget>[
                  Container(
                    height: 150,
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blueGrey,
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.notifications_active),
                    color: Colors.white,
                    iconSize: 100,
                  ),
                  Positioned(
                      left: 100, right: 50, bottom: 70, top: 30,
                      child: CircleAvatar(
                        child: Text("8"),
                        maxRadius: 20,
                        backgroundColor: Colors.green,
                      )
                  ),
                ],
              ),
            ],
          ),
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
