import 'package:creativedesign/Animation/animated_switcher.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Animated_Switcher_Code extends StatelessWidget {
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
        title: Text("Animated Switcher",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_Switcher()));
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
import 'package:creativedesign/Animation_Codes/animated_switcher_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Animated_Switcher extends StatefulWidget {
  @override
  _Animated_SwitcherState createState() => _Animated_SwitcherState();
}
class _Animated_SwitcherState extends State<Animated_Switcher> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _count1 = 0; int _count2 = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Animated Switcher",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_Switcher_Code()));
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
            AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (Widget widget,Animation<double> animation){
                return ScaleTransition(
                  scale: animation,
                  child: widget,
                );
              },
              child: Container(
                key: ValueKey<int>(_count1),
                height: 100,width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color:Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(
                    color: Colors.black,
                    spreadRadius: 0.5,
                    blurRadius: 12
                  )]
                ),
                child: Text(
                  _count1.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 50
                  ),
                ),
              ),
            ),
            RaisedButton(
              onPressed: (){
                setState(() {
                  _count1 +=1; _count2 -=1;
                });
              },
              child: Text("Change Number!"),
              elevation: 5.0,
              textColor: Colors.white,
              color: Colors.lightGreen,
            ),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (Widget widget,Animation<double> animation){
                return ScaleTransition(
                  scale: animation,
                  child: widget,
                );
              },
              child: Container(
                key: ValueKey<int>(_count2),
                height: 100,width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color:Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [BoxShadow(
                        color: Colors.black,
                        spreadRadius: 0.5,
                        blurRadius: 12
                    )]
                ),
                child: Text(
                  _count2.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 50
                  ),
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
