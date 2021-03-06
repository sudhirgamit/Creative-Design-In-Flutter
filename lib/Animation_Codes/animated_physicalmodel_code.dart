import 'package:creativedesign/Animation/animated_physicalmodel.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Animated_PhysicalModel_Code extends StatelessWidget {
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
        title: Text("Animated PhysicalModel",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_PhysicalModel()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Animation/animated_physicalmodel.dart");
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
import 'package:creativedesign/Animation_Codes/animated_physicalmodel_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Animated_PhysicalModel extends StatefulWidget {
  @override
  _Animated_PhysicalModelState createState() => _Animated_PhysicalModelState();
}
class _Animated_PhysicalModelState extends State<Animated_PhysicalModel> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _first = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Animated PhysicalModel",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_PhysicalModel_Code()));
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
            AnimatedPhysicalModel(
              child: Container(
                height: 150,width: 150,color:Colors.orange
              ),
              elevation: _first ? 20.0 : 0.0,
              duration: Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              animateShadowColor: true,
              animateColor: true,
              shape: BoxShape.rectangle,
              color: Colors.black,
              shadowColor: Colors.teal,
            ),
            RaisedButton(
              child: Text("Change Elevation!"),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 5.0,
              onPressed: (){
                setState(() {
                  _first = !_first;
                });
              },
            ),
            AnimatedPhysicalModel(
              child: Container(
                  height: 150,width: 150,color:Colors.green
              ),
              elevation: _first ? 0.0 : 20.0,
              duration: Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              animateShadowColor: true,
              animateColor: true,
              shape: BoxShape.rectangle,
              color: Colors.black,
              shadowColor: Colors.teal,
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
