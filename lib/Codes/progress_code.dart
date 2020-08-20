import 'package:creativedesign/Widgets/progress_box.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Progress_Code extends StatelessWidget {
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
        title: Text("Progress Box",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Progress_Box()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Widgets/progress_box.dart");
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
import 'package:creativedesign/Codes/progress_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Progress_Box extends StatelessWidget {
  final _scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text("Progress Box"),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Progress_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("CircularProgressIndicator"),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircularProgressIndicator(),
                  CircularProgressIndicator(backgroundColor: Colors.green,valueColor: AlwaysStoppedAnimation<Color>(Colors.red),),
                  CircularProgressIndicator(backgroundColor: Colors.orange,valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),strokeWidth: 1.5,),
                ],
              ),
              Divider(indent: 10,endIndent: 10,thickness: 2.5,color: Colors.blue,),
              Text("LinearProgressIndicator"),
              SizedBox(height: 20,),
              LinearProgressIndicator(),
              LinearProgressIndicator(backgroundColor: Colors.orange,valueColor: AlwaysStoppedAnimation<Color>(Colors.green)),
            ],
          ),
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
