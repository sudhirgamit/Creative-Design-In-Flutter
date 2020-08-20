import 'package:creativedesign/Cupertino/cupertino_datepicker.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Cupertino_DatePicker_Code extends StatelessWidget {
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
        title: Text("Cupertino DatePicker",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cupertino_DatePicker()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Cupertino/cupertino_datepicker.dart");
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
import 'package:creativedesign/Cupertino_Codes/cupertino_datepicker_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino_DatePicker extends StatefulWidget {
  @override
  _Cupertino_DatePickerState createState() => _Cupertino_DatePickerState();
}
class _Cupertino_DatePickerState extends State<Cupertino_DatePicker> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Cupertino DatePicker",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Cupertino_DatePicker_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Date"),
            Container(
              height: 130,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                  color: Colors.black,
                  blurRadius: 12,
                  offset: Offset(1.0,5.0),
                  spreadRadius: 0.5
                )]
              ),
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                onDateTimeChanged: (val){
                },
                backgroundColor: Colors.lightGreen,
              ),
            ),
            Text("Time"),
            Container(
              height: 130,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                      color: Colors.black,
                      blurRadius: 12,
                      offset: Offset(1.0,5.0),
                      spreadRadius: 0.5
                  )]
              ),
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.time,
                onDateTimeChanged: (val){
                },
                backgroundColor: Colors.white24,
              ),
            ),
            Text("Date And Time"),
            Container(
              height: 130,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                      color: Colors.black,
                      blurRadius: 12,
                      offset: Offset(1.0,5.0),
                      spreadRadius: 0.5
                  )],
              ),
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.dateAndTime,
                onDateTimeChanged: (val){
                },
                backgroundColor: Colors.blueAccent,
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
