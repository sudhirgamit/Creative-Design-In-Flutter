import 'package:creativedesign/AppBar/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Custom_AppBar_Code extends StatelessWidget {
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
        title: Text("Custom AppBar",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Custom_AppBar()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/AppBar/custom_appbar.dart");
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
import 'package:creativedesign/AppBar_Codes/custom_appbar_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Custom_AppBar extends StatefulWidget {
  @override
  _Custom_AppBarState createState() => _Custom_AppBarState();
}
class _Custom_AppBarState extends State<Custom_AppBar> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Custom AppBar"),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Custom_AppBar_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 30,left: 10,right: 10),
              height: 90,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
                      onPressed: (){
                        setState(() {
                        });
                      },
                    ),
                    Text("Custom AppBar",style: TextStyle(color: Colors.white60,fontSize: 20),),
                    IconButton(
                      icon: Icon(Icons.keyboard_voice,color: Colors.white60,),
                      onPressed: (){
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30,left: 10,right: 10),
              height: 90,
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: (){
                        setState(() {
                        });
                      },
                    ),
                    Text("Custom AppBar",style: TextStyle(color: Colors.black,fontSize: 20),),
                    IconButton(
                      icon: Icon(Icons.transfer_within_a_station),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30,left: 10,right: 10),
              height: 90,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Colors.orange,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.menu,color: Colors.white,),
                      onPressed: (){
                        setState(() {
                        });
                      },
                    ),
                    Text("Custom AppBar",style: TextStyle(color: Colors.white60,fontSize: 20),),
                    IconButton(
                      icon: Icon(Icons.search,color: Colors.white60,),
                      onPressed: (){
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.transfer_within_a_station,color: Colors.white,),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30,left: 10,right: 10),
              height: 90,
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.orange,Colors.green],
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
                        onPressed: (){},
                      ),
                      SizedBox(width: 10,),
                      Text("Custom AppBar",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ],
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
