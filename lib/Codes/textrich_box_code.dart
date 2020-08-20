import 'package:creativedesign/Widgets/textrich_box.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class TextRich_Box_Code extends StatelessWidget {
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
        title: Text("RichText Box",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>TextRich_Box()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Widgets/textrich_box.dart");
            },
            icon: Icon(Icons.share,size: 20,color: Colors.black,),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SelectableText.rich(
            TextSpan(
              style: TextStyle(fontFamily: 'monospace', fontSize: 12.0,decoration: TextDecoration.none,fontWeight: FontWeight.w500)
                  .apply(fontSizeFactor: 1.1),
              children: <TextSpan>[
                DartSyntaxHighlighter(style).format("""
import 'package:creativedesign/Codes/textrich_box_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class TextRich_Box extends StatefulWidget {
  @override
  _TextRich_BoxState createState() => _TextRich_BoxState();
}
class _TextRich_BoxState extends State<TextRich_Box> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _first = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("TextRich Box",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TextRich_Box_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Creative ",style: TextStyle(color: _first ? Colors.blueAccent : Colors.teal,fontSize: 25,letterSpacing: 1.0),
                    ),
                    TextSpan(
                        text: "Design ",style: TextStyle(color: _first ? Colors.grey : Colors.blue,fontSize: 20,fontWeight: FontWeight.bold)
                    ),
                    TextSpan(
                        text: "Flutter",style: TextStyle(color: _first ? Colors.red : Colors.green,fontSize: 25,fontWeight: FontWeight.w600,fontStyle: FontStyle.italic)
                    )
                  ]
              ),
            ),
            SizedBox(height: 10,),
            RichText(
              text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "G",style: TextStyle(color: _first ? Colors.teal : Colors.blueAccent  ,fontSize: 50,fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: "o",style: TextStyle(color: _first ? Colors.deepOrange : Colors.red ,fontSize: 50,fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: "o",style: TextStyle(color: _first ? Colors.orange : Colors.yellow,fontSize: 50,fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: "g",style: TextStyle(color: _first ? Colors.teal :  Colors.blueAccent,fontSize: 50,fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: "l",style: TextStyle(color: _first ? Colors.yellow : Colors.green,fontSize: 50,fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: "e",style: TextStyle(color: _first ? Colors.deepOrange : Colors.red,fontSize: 50,fontWeight: FontWeight.w600),
                    ),
                  ]
              ),
            ),
            SizedBox(height: 10,),
            RaisedButton(
              onPressed: (){
                setState(() {
                  _first = !_first;
                });
              },
              child: Text("Change Colors !",style: TextStyle(color: Colors.white,fontSize: 15),),
              color: Colors.lightBlue,
            )
          ],
        )
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
