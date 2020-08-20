import 'package:creativedesign/Cupertino/cupertino_contextmenu.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Cupertino_ContextMenu_Code extends StatelessWidget {
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
        title: Text("CupertinoContextMenu",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cupertino_ContextMenu()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Cupertino/cupertino_contextmenu.dart");
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
import 'package:creativedesign/Cupertino_Codes/cupertino_contextmenu_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino_ContextMenu extends StatefulWidget {
  @override
  _Cupertino_ContextMenuState createState() => _Cupertino_ContextMenuState();
}
class _Cupertino_ContextMenuState extends State<Cupertino_ContextMenu> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("CupertinoContextMenu",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Cupertino_ContextMenu_Code()));
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
            ListTile(
                leading:Text("Icon ContextMenu : ",style: TextStyle(fontSize: 20,color: Colors.blueGrey,fontWeight: FontWeight.w700),),
                trailing:CupertinoContextMenu(
                  child: Icon(CupertinoIcons.home,size: 50,color: Colors.blueGrey,),
                  actions: <Widget>[
                    CupertinoContextMenuAction(
                      onPressed: (){
                        setState(() {
                          print("First Page");
                        });
                      },
                      child: Text("First Page"),
                    ),
                    CupertinoContextMenuAction(
                      onPressed: (){
                        setState(() {
                          print("Second Page");
                        });
                      },
                      child: Text("Second Page"),
                    ),
                    CupertinoContextMenuAction(
                      onPressed: (){
                        setState(() {
                          print("Third Page");
                        });
                      },
                      child: Text("Third Page"),
                    ),
                    CupertinoContextMenuAction(
                      onPressed: (){
                        setState(() {
                          print("Fourth Page");
                        });
                      },
                      child: Text("Fourth Page"),
                    ),
                  ],
                )
            ),
            ListTile(
                leading:Text("Container ContextMenu : ",style: TextStyle(fontSize: 20,color: Colors.blueGrey,fontWeight: FontWeight.w700),),
                trailing:CupertinoContextMenu(
                  child: Container(
                    height: 50,width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(
                          color: Colors.black26,
                          blurRadius: 12,
                          spreadRadius: 0.5,
                          offset: Offset(1.0,5.0)
                        )]
                    ),
                    child: Text("A",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.white),),
                  ),
                  actions: <Widget>[
                    CupertinoContextMenuAction(
                      onPressed: (){
                        setState(() {
                          print("First Page");
                        });
                      },
                      child: Text("First Page"),
                    ),
                    CupertinoContextMenuAction(
                      onPressed: (){
                        setState(() {
                          print("Second Page");
                        });
                      },
                      child: Text("Second Page"),
                    ),
                    CupertinoContextMenuAction(
                      onPressed: (){
                        setState(() {
                          print("Third Page");
                        });
                      },
                      child: Text("Third Page"),
                    ),
                    CupertinoContextMenuAction(
                      onPressed: (){
                        setState(() {
                          print("Fourth Page");
                        });
                      },
                      child: Text("Fourth Page"),
                    ),
                  ],
                )
            ),
            ListTile(
                leading:Text("Card ContextMenu : ",style: TextStyle(fontSize: 20,color: Colors.blueGrey,fontWeight: FontWeight.w700),),
                trailing:CupertinoContextMenu(
                  child: Card(
                    elevation: 10.0,color: Colors.green,
                    child: Chip(backgroundColor: Colors.green,label: Text(" B ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.white,))),//Text("Card",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.white),),
                  ),
                  actions: <Widget>[
                    CupertinoContextMenuAction(
                      onPressed: (){
                        setState(() {
                          print("First Page");
                        });
                      },
                      child: Text("First Page"),
                    ),
                    CupertinoContextMenuAction(
                      onPressed: (){
                        setState(() {
                          print("Second Page");
                        });
                      },
                      child: Text("Second Page"),
                    ),
                    CupertinoContextMenuAction(
                      onPressed: (){
                        setState(() {
                          print("Third Page");
                        });
                      },
                      child: Text("Third Page"),
                    ),
                    CupertinoContextMenuAction(
                      onPressed: (){
                        setState(() {
                          print("Fourth Page");
                        });
                      },
                      child: Text("Fourth Page"),
                    ),
                  ],
                )
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
