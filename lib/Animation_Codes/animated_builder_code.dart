import 'package:creativedesign/Animation/animated_builder.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Animated_Builder_Code extends StatelessWidget {
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
        title: Text("Animated Builder",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_Builder()));
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
import 'package:creativedesign/Animation_Codes/animated_builder_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Animated_Builder extends StatefulWidget {
  @override
  _Animated_BuilderState createState() => _Animated_BuilderState();
}
class _Animated_BuilderState extends State<Animated_Builder> with SingleTickerProviderStateMixin {
  final _scaffoldKey =new GlobalKey<ScaffoldState>();
  AnimationController _animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this,duration: Duration(seconds: 5))..repeat();
  }
  @override
  void dispose(){
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Animated Builder",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_Builder_Code()));
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
            AnimatedBuilder(
                animation: _animationController,
                child: Container(
                  width: 150,height: 150,
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    shape: BoxShape.circle
                  ),
                  child: Text("Creative",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 30),),
                ),
                builder: (BuildContext context,Widget widget){
                  return Transform.rotate(
                      angle: _animationController.value * 5.0 * 3.14,
                      child: widget,
                  );
                },
            ),
            AnimatedBuilder(
              animation: _animationController,
              child: Container(
                width: 150,height: 150,
                alignment: AlignmentDirectional.center,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    shape: BoxShape.circle
                ),
                child: Text("Design",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 30),),
              ),
              builder: (BuildContext context,Widget widget){
                return Transform.scale(
                  scale: _animationController.value,
                  child: widget,
                );
              },
            ),
            AnimatedBuilder(
              animation: _animationController,
              child: Container(
                width: 150,height: 150,
                alignment: AlignmentDirectional.center,
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    shape: BoxShape.circle
                ),
                child: Text("Flutter",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 30),),
              ),
              builder: (BuildContext context,Widget widget){
                return Transform.translate(
                  offset: Offset(0,10),
                  transformHitTests: true,
                  child: widget,
                );
              },
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
