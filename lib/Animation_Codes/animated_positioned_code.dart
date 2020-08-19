import 'package:creativedesign/Animation/animated_positioned.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Animated_Positioned_Code extends StatelessWidget {
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
        title: Text("Animated Positioned",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_Positioned()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Custom_AppBar()));
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
import 'package:creativedesign/Animation_Codes/animated_positioned_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Animated_Positioned extends StatefulWidget {
  @override
  _Animated_PositionedState createState() => _Animated_PositionedState();
}
class _Animated_PositionedState extends State<Animated_Positioned> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _first = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
          title: Text("Animated Positioned",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_Positioned_Code()));
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
            Container(
              width: 300,height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [new BoxShadow(
                  color: Colors.black,
                  blurRadius: 12,
                  spreadRadius: 0.5
                )],
              ),
              child: Stack(
                children: <Widget>[
                  AnimatedPositioned(
                    child: Chip(label: Text("0",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.transparent),),shadowColor: Colors.black,elevation: 2.0,),
                    duration: Duration(milliseconds: 400),
                    curve: Curves.slowMiddle,
                    top: _first ? 0.0 : 0.0,
                    right: _first ? 0.0 : 0.0,
                    left: _first ? 0.0 : 0.0,
                    bottom: _first ? 0.0 : 0.0,
                  ),
                  AnimatedPositioned(
                    child: Chip(label: Text("D",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),shadowColor: Colors.black,elevation: 2.0,),
                    duration: Duration(milliseconds: 400),
                    curve: Curves.fastOutSlowIn,
                    top: _first ? 260 : 0.0,
                    right: _first ? 0.0 : 0.0,
                    left: _first ? 259 : 0.0,
                    bottom: _first ? 0.0 : 0.0,
                  ),
                  AnimatedPositioned(
                    child: Chip(label: Text("C",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),shadowColor: Colors.black,elevation: 2.0,),
                    duration: Duration(milliseconds: 400),
                    curve: Curves.linear,
                    top: _first ? 260 : 0.0,
                    right: _first ? 259 : 0.0,
                    left: _first ? 0.0 : 0.0,
                    bottom: _first ? 0.0 : 0.0,
                  ),
                  AnimatedPositioned(
                    child: Chip(label: Text("B",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),shadowColor: Colors.black,elevation: 2.0,),
                    duration: Duration(milliseconds: 400),
                    curve: Curves.decelerate,
                    top: _first ? 0.0 : 0.0,
                    right: _first ? 0.0 : 0.0,
                    left: _first ? 259 : 0.0,
                    bottom: _first ? 260 : 0.0,
                  ),
                  AnimatedPositioned(
                    child: Chip(label: Text("A",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),shadowColor: Colors.black,elevation: 2.0,),
                    duration: Duration(milliseconds: 400),
                    curve: Curves.slowMiddle,
                    top: _first ? 0.0 : 0.0,
                    right: _first ? 259 : 0.0,
                    left: _first ? 0.0 : 0.0,
                    bottom: _first ? 260 : 0.0,
                  ),
                ],
              ),
            ),
            RaisedButton(
              onPressed: (){
                setState(() {
                  _first = !_first;
                });
              },
              child: Text("Change Positioned!"),
              color: _first ? Colors.orange : Colors.green,
              textColor: Colors.white,
              elevation: 5.0,
              animationDuration: Duration(milliseconds: 300),
            )
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

