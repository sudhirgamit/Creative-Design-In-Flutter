import 'package:creativedesign/Cupertino/cupertino_actionsheet.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Cupertino_ActionSheet_Code extends StatelessWidget {
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
        title: Text("CupertinoActionSheet",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cupertino_ActionSheet()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Cupertino/cupertino_actionsheet.dart");
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
import 'package:creativedesign/Cupertino_Codes/cupertino_actionsheet_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino_ActionSheet extends StatefulWidget {
  @override
  _Cupertino_ActionSheetState createState() => _Cupertino_ActionSheetState();
}
class _Cupertino_ActionSheetState extends State<Cupertino_ActionSheet> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  Future<void> _buildActionSheet(){
    return showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context){
          return CupertinoActionSheet(
            title: Text("IOS ActionSheet"),
            message: Text("This Is My First IOS Widget To Used In Flutter"),
            actions: <Widget>[
              CupertinoActionSheetAction(
                onPressed: (){},
                isDefaultAction: true,
                child: Text("Create New Account"),
              ),
              CupertinoActionSheetAction(
                onPressed: (){},
                isDefaultAction: true,
                child: Text("Open Account"),
              ),
              CupertinoActionSheetAction(
                onPressed: (){},
                isDefaultAction: true,
                child: Text("Close Account"),
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: (){
                setState(() {
                  Navigator.pop(context,"Close");
                });
              },
              isDefaultAction: true,
              child: Text("Cancel"),
            ),
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("CupertinoActionSheet",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Cupertino_ActionSheet_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: CupertinoButton(
          onPressed: (){
            setState(() {
              _buildActionSheet();
            });
          },
          padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
          child: Text("CupertinoActionSheet IOS",style: TextStyle(fontSize: 16),),
          color: Colors.blueAccent,
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
