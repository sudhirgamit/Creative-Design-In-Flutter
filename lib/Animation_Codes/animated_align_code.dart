import 'package:creativedesign/Animation/animated_align.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Animated_Align_Code extends StatelessWidget {
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
        title: Text("Animated Align",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_Align()));
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
import 'package:creativedesign/Animation_Codes/animated_align_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Animated_Align extends StatefulWidget {
  @override
  _Animated_AlignState createState() => _Animated_AlignState();
}
class _Animated_AlignState extends State<Animated_Align> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  AlignmentDirectional _align1 = AlignmentDirectional.topStart;
  AlignmentDirectional _align2 = AlignmentDirectional.bottomEnd;
  bool _first = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Animated Align",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_Align_Code()));
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
            AnimatedAlign(
                alignment: _align1,
                duration: Duration(seconds: 3),
                curve: Curves.ease,
                child: Container(
                  height: 100,width: 100,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    shape: BoxShape.circle
                  ),
                ),
            ),
            RaisedButton(
              onPressed: (){
                setState(() {
                 if(_first){
                   _align1 = AlignmentDirectional.topStart;
                   _align2 = AlignmentDirectional.bottomEnd;
                 }else{
                   _align1 = AlignmentDirectional.centerEnd;
                   _align2 = AlignmentDirectional.centerStart;
                 }
                 _first = !_first;
                });
              },
              child: Text("Change Position!",style: TextStyle(color: Colors.white,fontSize: 20),),
              elevation: 10.0,
              color: Colors.deepOrangeAccent,
            ),
            AnimatedAlign(
              alignment: _align2,
              duration: Duration(seconds: 3),
              curve: Curves.ease,
              child: Container(
                height: 100,width: 100,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    shape: BoxShape.circle
                ),
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
