import 'package:creativedesign/Widgets/button_box.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Button_Code extends StatelessWidget {
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
        title: Text("Button Box",style: TextStyle(color: Colors.black,)),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Button_Box()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Widgets/button_box.dart");
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
import 'package:creativedesign/Codes/icon_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Button_Box extends StatelessWidget {
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text("Button Box"),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Icon_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25),
          )
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(8.0),
          width: MediaQuery.of(context).size.width,
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    onPressed:(){
                      _scaffoldkey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("RaisedButton".toString(),style: TextStyle(color: Colors.white),),
                          action: SnackBarAction(label: "Ok",textColor: Colors.white,onPressed: (){},),
                          backgroundColor: Colors.blueGrey,
                          behavior: SnackBarBehavior.floating,
                          duration: Duration(seconds: 3),
                        ),
                      );
                    },
                    child: Text("Raise Button"),
                    color: Colors.blueGrey,
                    textColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                    splashColor: Colors.orange,
                    //highlightColor: Colors.green,
                    colorBrightness: Brightness.light,
                    elevation: 20,
                  ),
                  RaisedButton(
                    child: Text("Disable"),
                    color: Colors.blueGrey,
                    textColor: Colors.white,
                    disabledTextColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // elevation is not use in flatbotton
                  // That is not the automatically provide in border.It can be manually define.
                  FlatButton(
                    onPressed:(){
                      _scaffoldkey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("FlatButton".toString(),style: TextStyle(color: Colors.blueGrey),),
                          action: SnackBarAction(label: "Ok",textColor: Colors.blueGrey,onPressed: (){},),
                          backgroundColor: Colors.white,
                          behavior: SnackBarBehavior.floating,
                          duration: Duration(seconds: 3),
                        ),
                      );
                    },
                    child: Text("Flat Button"),
                    color: Colors.white,
                    textColor: Colors.blueGrey,
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                    splashColor: Colors.pink,
                    highlightColor: Colors.red,
                    colorBrightness: Brightness.dark,
                  ),
                  FlatButton(
                    child: Text("Disable"),
                    color: Colors.blueGrey,
                    textColor: Colors.white,
                    disabledTextColor: Colors.white,
                    disabledColor: Colors.black45,
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    onPressed:(){
                      _scaffoldkey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("MaterialButton".toString(),style: TextStyle(color: Colors.white),),
                          action: SnackBarAction(label: "Ok",textColor: Colors.white,onPressed: (){},),
                          backgroundColor: Colors.orange,
                          behavior: SnackBarBehavior.floating,
                          duration: Duration(seconds: 3),
                        ),
                      );
                    },
                    child: Text("Material Button"),
                    color: Colors.orange,
                    textColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                    splashColor: Colors.pink,
                    highlightColor: Colors.red,
                    colorBrightness: Brightness.dark,
                  ),
                  MaterialButton(
                    child: Text("Disable"),
                    color: Colors.blueGrey,
                    textColor: Colors.white,
                    disabledTextColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                    disabledColor: Colors.black45,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // elevation is not use in flatbotton
                  // That is not the automatically provide in border.It can be manually define.
                  IconButton(
                    onPressed:(){
                      _scaffoldkey.currentState.showSnackBar(
                        SnackBar(
                          content: Text("IconButton".toString(),style: TextStyle(color: Colors.white),),
                          action: SnackBarAction(label: "Ok",textColor: Colors.white,onPressed: (){},),
                          backgroundColor: Colors.red,
                          behavior: SnackBarBehavior.floating,
                          duration: Duration(seconds: 3),
                        ),
                      );
                    },
                    icon: Icon(Icons.airplay,color: Colors.red,size: 40,),
                    splashColor: Colors.green,
                    tooltip: "View Tools",
                  ),
                  IconButton(
                    icon: Icon(Icons.airplay,size: 40,),
                    splashColor: Colors.green,
                    tooltip: "Disable",
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            _scaffoldkey.currentState.showSnackBar(
              SnackBar(
                content: Text("FloatingActionButton".toString(),style: TextStyle(color: Colors.white),),
                action: SnackBarAction(label: "Ok",textColor: Colors.white,onPressed: (){},),
                backgroundColor: Colors.pink,
                behavior: SnackBarBehavior.floating,
                duration: Duration(seconds: 3),
              ),
            );
          },
          child: Icon(Icons.add),
          tooltip: "Add Tools",
          splashColor: Colors.white,
          backgroundColor: Colors.pink,
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
