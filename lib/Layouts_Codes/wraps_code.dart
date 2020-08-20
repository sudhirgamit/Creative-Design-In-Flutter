import 'package:creativedesign/Layouts/wraps.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Wraps_Code extends StatelessWidget {
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
        title: Text("Wrap Layouts",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Wraps()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Layouts/wraps.dart");
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
import 'package:creativedesign/Layouts_Codes/wraps_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Wraps extends StatefulWidget {
  @override
  _WrapsState createState() => _WrapsState();
}
class _WrapsState extends State<Wraps> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  Widget Chips(String name){
    return Chip(
      avatar: CircleAvatar(child: Text(name.substring(0,1)),),
      label: Text(name),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Wrap Layouts"),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Wraps_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25),
          )
        ],
      ),
      backgroundColor: Colors.grey,
      body: Center(
        // That Is Same Working In The Row But That Is Automatically Manage The Space And Not Overflow Error
        child: Wrap(
          runSpacing: 20,
          spacing: 10,
          alignment: WrapAlignment.spaceBetween,
          runAlignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.start,
          children: <Widget>[
            Chips("Sahil"),
            Chips("Rahul"),
            Chips("Rajesh"),
            Chips("Tanay"),
            Chips("Vidhya"),
            Chips("Sumit"),
            Chips("Elesh"),
            Chips("Kajal"),
            Chips("Piyush"),
            Chips("Sweta"),
            Chips("Jayesh"),
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
