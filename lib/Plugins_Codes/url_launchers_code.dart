import 'package:creativedesign/Plugins/url_launchers.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class URL_Launchers_Code extends StatelessWidget {
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
        title: Text("URL Launcher",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>URL_Launchers()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Plugins/url_launchers.dart");
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
              style: TextStyle(fontFamily: 'monospace', fontSize: 12.0,decoration: TextDecoration.none,fontWeight: FontWeight.w500)
                  .apply(fontSizeFactor: 1.1),
              children: <TextSpan>[
                DartSyntaxHighlighter(style).format("""
import 'package:creativedesign/Pages/advance.dart';
import 'package:creativedesign/Plugins_Codes/url_launchers_code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:url_launcher/url_launcher.dart';

class URL_Launchers extends StatefulWidget {
  @override
  _URL_LaunchersState createState() => _URL_LaunchersState();
}
class _URL_LaunchersState extends State<URL_Launchers> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  Future<void> share() async {
    await FlutterShare.share(
        title: 'Creative Design In Flutter',
        text: 'This application is make to education purpose for basic,advance and creative design widgets to mobile app developing in flutter.',
        linkUrl: 'https://play.google.com/store/apps/details?id=com.technology.creativedesign&hl=en_IN',
        chooserTitle: 'Share'
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("URL Launcher",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Advance()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>URL_Launchers_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black,),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Share All Social Media"),
            CupertinoButton(
                child: Text("Share"),
                color: CupertinoColors.activeGreen,
                onPressed: (){
                  setState(() {
                    share();
                  });
                }
            ),
            Divider(color: CupertinoColors.inactiveGray,thickness: 1.5,indent: 50,endIndent: 50,),
            Text("Phone Call"),
            CupertinoButton(
                child: Text("Call"),
                color: CupertinoColors.systemBlue,
                onPressed: (){
                  setState(() {
                    launch("tel:+918238895676");
                  });
                }
            ),
            Divider(color: CupertinoColors.inactiveGray,thickness: 1.5,indent: 50,endIndent: 50,),
            Text("Phone Email"),
            CupertinoButton(
                child: Text("Email"),
                color: CupertinoColors.destructiveRed,
                onPressed: (){
                  setState(() {
                    launch("mailto:sudhirgamit43@gmail.com");
                  });
                }
            ),
            Divider(color: CupertinoColors.inactiveGray,thickness: 1.5,indent: 50,endIndent: 50,),
            Text("Web URL Link"),
            CupertinoButton(
                child: Text("URL"),
                color: CupertinoColors.systemTeal,
                onPressed: (){
                  setState(() {
                    launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter");
                  });
                }
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
