import 'package:creativedesign/Cupertino/cupertino_slivernavbar.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Cupertino_SliverNavBar_Code extends StatelessWidget {
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
        title: Text("CupertinoSliverNavBar",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cupertino_SliverNavBar()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Columns()));
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
import 'package:creativedesign/Cupertino_Codes/cupertino_slivernavbar_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino_SliverNavBar extends StatefulWidget {
  @override
  _Cupertino_SliverNavBarState createState() => _Cupertino_SliverNavBarState();
}
class _Cupertino_SliverNavBarState extends State<Cupertino_SliverNavBar> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _pinned = true; bool _floating = false; bool _snap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            leading: CupertinoNavigationBarBackButton(
              previousPageTitle: "Prev",
              color: CupertinoColors.black,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
            ),
            trailing: IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cupertino_SliverNavBar_Code()));
              },
              icon: Icon(Icons.transfer_within_a_station,size: 25, color: Colors.black,),
            ),
            middle: Text("CupertinoSliverNavBar"),
            largeTitle: Text("iPhone And Apple",textAlign: TextAlign.center,style: TextStyle(fontSize: 30,color: CupertinoColors.activeBlue),),
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CupertinoButton(
                    child: Text("iPhone"),
                    onPressed: (){},
                    color: Colors.lightGreen,
                ),
                Divider(height: 100,indent: 50,endIndent: 50,thickness: 1.5,color: CupertinoColors.systemBlue,),
                CupertinoButton.filled(
                    child: Text("Apple "),
                    onPressed: (){}
                ),
              ],
            ),
          )
        ],
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
