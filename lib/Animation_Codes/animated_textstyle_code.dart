import 'package:creativedesign/Animation/animated_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Animated_TextStyle_Code extends StatelessWidget {
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
        title: Text("Animated DefaultTextStyle",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_TextStyle()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Animation/animated_textstyle.dart");
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
import 'package:creativedesign/Animation_Codes/animated_textstyle_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Animated_TextStyle extends StatefulWidget {
  @override
  _Animated_TextStyleState createState() => _Animated_TextStyleState();
}
class _Animated_TextStyleState extends State<Animated_TextStyle> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _first = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Animated DefaultTextStyle",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_TextStyle_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            AnimatedDefaultTextStyle(
              child: Text("Creative"),
              textAlign: TextAlign.center,
              curve: Curves.fastOutSlowIn,
              duration: Duration(seconds: 3),
              style: TextStyle(fontSize: _first ? 40 : 50,fontWeight: FontWeight.w600,color:_first ? Colors.deepOrangeAccent : Colors.blueGrey),
            ),
            AnimatedDefaultTextStyle(
              child: Text("Design"),
              textAlign: TextAlign.center,
              curve: Curves.fastOutSlowIn,
              duration: Duration(seconds: 3),
              style: TextStyle(fontSize: _first ? 50 : 25,fontWeight: FontWeight.w600,color: _first ? Colors.red : Colors.blueAccent),
            ),
            AnimatedDefaultTextStyle(
              child: Text("Flutter"),
              textAlign: TextAlign.center,
              curve: Curves.fastOutSlowIn,
              duration: Duration(seconds: 3),
              style: TextStyle(fontSize: _first ? 20 : 40,fontWeight: FontWeight.w600,color: _first ? Colors.red : Colors.lightBlue),
            ),
            RaisedButton(
              onPressed: (){
                setState(() {
                  _first = !_first;
                });
              },
              child: Text("TextStyle!",style: TextStyle(fontSize: 20),),
              color: Colors.red,
              textColor: Colors.white,
              elevation: 10.0,
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
