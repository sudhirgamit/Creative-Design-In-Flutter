import 'package:creativedesign/Cupertino/cupertino_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Cupertino_Button_Code extends StatelessWidget {
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
        title: Text("Cupertino Button",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cupertino_Button()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Cupertino/cupertino_button.dart");
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
import 'package:creativedesign/Cupertino_Codes/cupertino_button_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino_Button extends StatefulWidget {
  @override
  _Cupertino_ButtonState createState() => _Cupertino_ButtonState();
}
class _Cupertino_ButtonState extends State<Cupertino_Button> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Cupertino Button",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Cupertino_Button_Code()));
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
            CupertinoButton(
              child: Text("iPhone"),
              color: Colors.lightGreen,
              onPressed: (){
                setState(() {
                  _scaffoldKey.currentState.showSnackBar(
                    SnackBar(
                      content: Text("LightGreen iPhone"),
                      action: SnackBarAction(
                        onPressed: (){
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        label: "OK",
                        textColor: Colors.white,
                      ),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.lightGreen,
                      elevation: 5.0,
                      duration: Duration(seconds: 3),
                    ),
                  );
                });
              },
            ),
            Divider(indent: 50,endIndent: 50,thickness: 1.5,color: Colors.teal,height: 50,),
            CupertinoButton(
              child: Text("iPhone Disable"),
              disabledColor: Colors.blueGrey,
            ),
            Divider(indent: 50,endIndent: 50,thickness: 1.5,color: Colors.blueAccent,height: 50),
            CupertinoButton(
              child: Text("iPhone"),
              color: Colors.blueAccent,
              onPressed: (){
                setState(() {
                  _scaffoldKey.currentState.showSnackBar(
                    SnackBar(
                      content: Text("BlueAccent iPhone"),
                      action: SnackBarAction(
                        onPressed: (){
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        label: "OK",
                        textColor: Colors.white,
                      ),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.blueAccent,
                      elevation: 5.0,
                      duration: Duration(seconds: 3),
                    ),
                  );
                });
              },
              minSize: 60,
            ),
            Divider(indent: 50,endIndent: 50,thickness: 1.5,color: Colors.blue,height: 50),
            CupertinoButton(
              child: Text("iPhone"),
              color: Colors.green,
              onPressed: (){
                setState(() {
                  _scaffoldKey.currentState.showSnackBar(
                    SnackBar(
                      content: Text("Green iPhone"),
                      action: SnackBarAction(
                        onPressed: (){
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        label: "OK",
                        textColor: Colors.white,
                      ),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.green,
                      elevation: 5.0,
                      duration: Duration(seconds: 3),
                    ),
                  );
                });
              },
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            Divider(indent: 50,endIndent: 50,thickness: 1.5,color: Colors.green,height: 50),
            CupertinoButton(
              child: Text("iPhone"),
              color: Colors.teal,
              onPressed: (){
                setState(() {
                  _scaffoldKey.currentState.showSnackBar(
                    SnackBar(
                      content: Text("Teal iPhone"),
                      action: SnackBarAction(
                        onPressed: (){
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        label: "OK",
                        textColor: Colors.white,
                      ),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.teal,
                      elevation: 5.0,
                      duration: Duration(seconds: 3),
                    ),
                  );
                });
              },
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 110),
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
